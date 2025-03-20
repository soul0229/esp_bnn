#include "common.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h> 
#include "conv.h"
#include "utils.h"
#include "core.h"
#include <string.h> 
#include <esp_log.h>
// #include "esp_log_timestamp.h"

char *CIFAR10_tag[] = { "飞机 (airplane)",
                        "汽车 (automobile)",
                        "鸟 (bird)",
                        "猫 (cat)",
                        "鹿 (deer)",
                        "狗 (dog)",
                        "青蛙 (frog)",
                        "马 (horse)",
                        "船 (ship)",
                        "卡车 (truck)"};

extern const char *name_typ[];

extern global_data gd;
uint32_t time_cnt;
static data_info_t *BasicBlock(data_info_t *input, common_t *basicBlock){
    if(!input || !input->data){
        return NULL;
    }

    data_info_t *net_args = (data_info_t*)basicBlock->child;
    time_cnt = esp_log_timestamp();
    data_info_t *Ab = SignActivate(input,0);
    // printf("%s.%s SignActivate 0 use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);
    
    time_cnt = esp_log_timestamp();
    data_info_t *output = BinarizeConv2d(net_args, Ab, net_args->dim[0]/net_args->dim[1], 1, 1);
    // printf("%s.%s BinarizeConv2d 0 use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);
    
    net_args = (data_info_t *)net_args->sibling;
    time_cnt = esp_log_timestamp();
    output = bachnorm(output, net_args);
    // printf("%s.%s bachnorm 0 use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);
    
    time_cnt = esp_log_timestamp();
    output = hardtanh(output);
    // printf("%s.%s hardtanh 0 use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);

    dbg_print("%s:%d output->dim[%d][%d][%d][%d]\n",__FILE__,__LINE__, output->dim[0], output->dim[1], output->dim[2], output->dim[3]);

    time_cnt = esp_log_timestamp();
    data_info_t *Ab2 = SignActivate(output,1);
    // printf("%s.%s SignActivate 1 use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);

    free(output);
    net_args = (data_info_t *)net_args->sibling;

    time_cnt = esp_log_timestamp();
    output = BinarizeConv2d(net_args, Ab2, net_args->dim[0]/net_args->dim[1], 1, 1);
    // printf("%s.%s BinarizeConv2d 1 use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);

    net_args = (data_info_t *)net_args->sibling;
    time_cnt = esp_log_timestamp();
    output = bachnorm(output, net_args);
    // printf("%s.%s bachnorm 1 use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);
    free(Ab2);

    data_info_t *shortcut = input;
    if(((data_info_t *)basicBlock->child)->dim[0]/((data_info_t *)basicBlock->child)->dim[1] == 2 && ((data_info_t *)net_args->sibling)->type == TSHORTCUT){
        net_args = (data_info_t *)((common_t *)net_args->sibling)->child;
        dbg_print("net_args type:%s \n",name_typ[TSHORTCUT]);
        time_cnt = esp_log_timestamp();
        shortcut = BinarizeConv2d(net_args, Ab, net_args->dim[0]/net_args->dim[1], 0, 0);
        // printf("%s.%s BinarizeConv2d shortcut use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);
        net_args = (data_info_t *)net_args->sibling;
        time_cnt = esp_log_timestamp();
        shortcut = bachnorm(shortcut, net_args);
        // printf("%s.%s bachnorm shortcut use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);

        free(input);
    }
    free(Ab);

    time_cnt = esp_log_timestamp();
    output = data_add(shortcut, output);
    // printf("%s.%s data_add use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);

    time_cnt = esp_log_timestamp();
    output = hardtanh(output);
    // printf("%s.%s hardtanh 1 use time %ldms\n",((common_t *)basicBlock->parent)->name,basicBlock->name,esp_log_timestamp()- time_cnt);

    return output;
}

data_info_t *net_inference(common_t *net, data_info_t *input){
    common_t *stage = (net?net:(common_t *)Net);
    if(stage->child == NULL && stage->sibling == NULL)
        return NULL;

    data_info_t *output = input; 
    time_cnt = esp_log_timestamp();
    Compose_RGB_data(output, CIFAR);
    // printf("Compose_RGB_data use time %ldms\n",esp_log_timestamp()- time_cnt);
    


    while(stage != NULL){
        if(output == NULL){ 
            // printf("error output = NULL\n");
            return NULL;
        }
        switch(stage->type){
            case NET_ROOT:
                stage = (common_t *)stage->child;
                continue;
            case TLAYER:
                if(!stage->child || ((common_t *)stage->child)->type != TLAYER){
                    // printf("error");
                    return NULL;
                }
                common_t *layer = (common_t *)stage->child;
                dbg_print("layer name:%s\n", layer->name);
                output = BasicBlock(output,layer);
                if(output==NULL){
                    // printf("BasicBlock error\n");
                    return NULL;
                }
                layer = (common_t *)layer->sibling;
                dbg_print("layer name:%s\n", layer->name);
                output = BasicBlock(output,layer);
                break;
            case TSHORTCUT:
                // printf("error");
                return NULL;
            case TCONV:
                time_cnt = esp_log_timestamp();
                output = Conv2d((data_info_t *)stage,output, 1,1);
                // printf("Conv2d use time %ldms\n",esp_log_timestamp()- time_cnt);
                // free(input->data);
                free(input);
                break;
            case TBATCHNORM:
                dbg_print("sibling type:%s\n",name_typ[((common_t *)stage->sibling)->type]);
                if(((common_t *)stage->sibling)->type == TLINER){
                    time_cnt = esp_log_timestamp();
                    output = avg_pool(output, 4);
                    // printf("avg_pool use time %ldms\n",esp_log_timestamp()- time_cnt);
                }
                time_cnt = esp_log_timestamp();
                output = bachnorm(output, (data_info_t *)stage);
                // printf("bachnorm %s use time %ldms\n",stage->name,esp_log_timestamp()- time_cnt);
                
                // if(strstr(stage->name,"bn1") == stage->name)
                //     output = hardtanh(output);
                break;
            case TLINER:
                time_cnt = esp_log_timestamp();
                output = linear_data(output, (data_info_t *)stage);
                // printf("linear_data use time %ldms\n",esp_log_timestamp()- time_cnt);
                break;
            default:
                break;
        }
        stage = (common_t *)stage->sibling;
    }

    return output;
}

typedef struct {
    float value;   // 数据值
    int index;   // 数据的原始位置
} Data;



int compare(const void *a, const void *b) {
    Data *dataA = (Data *)a;
    Data *dataB = (Data *)b;

    // 按照 value 值进行升序排序
    return dataB->value - dataA->value;
}

void resnet18(data_info_t *input, char *file){
    if(!input)
        return;
    Data result_out[10] = {};

    print_RGB_data(input);
   
    data_info_t *output = net_inference(NULL, input);
    // // printf("use time %ldms\n",esp_log_timestamp()- time_cnt);
    if(!output){
        // printf("net inference error!\n");
        return;
    }
    float *result = output->data;
    for(uint16_t dim=0;dim < output->dim[0];dim++){
        result_out[dim].value = result[dim];
        result_out[dim].index = dim;
    }
    // printf("\n");
   
    qsort(result_out, 10, sizeof(Data), compare);
    for(uint16_t dim=0;dim < output->dim[0];dim++){
        if(dim == result_out[0].index)
            printf("\033[30;41m%2.2f\033[0m\t",result[dim]);
        else
            printf("%2.2f\t",result[dim]);
    } 
    printf("\n");
    printf("最大值: %.2f, 标签: %d, 类别：%s\n", result_out[0].value, result_out[0].index, CIFAR10_tag[result_out[0].index]);
    free(output);
    // char find_index = '/';
    // // printf("%s\tindex:%c \toutput:%d\n",(strrchr(file, find_index)+1),*(strrchr(file, find_index)+1),result_out[0].index);
}