idf_component_register(SRCS "resnet18.c"
                       INCLUDE_DIRS "."
                       REQUIRES fatfs BNN
                       WHOLE_ARCHIVE)