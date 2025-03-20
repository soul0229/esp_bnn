idf_component_register(SRCS "Conv2d.c" "core.c" "loadNet.c" "utils.c"
                       INCLUDE_DIRS "./include"
                       REQUIRES fatfs sd_card
                       WHOLE_ARCHIVE)