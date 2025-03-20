idf_component_register(SRCS "sd_test_io.c" "sd_mount.c"
                       INCLUDE_DIRS "."
                       REQUIRES fatfs esp_adc
                       WHOLE_ARCHIVE)
