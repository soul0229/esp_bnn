idf_component_register(SRCS "take_picture.c" "init_camera.c"
                       INCLUDE_DIRS "."
                       REQUIRES esp_psram sd_card net nvs_flash
                       WHOLE_ARCHIVE)

if(NOT CONFIG_SOC_SDMMC_HOST_SUPPORTED)
    fail_at_build_time(sdmmc ""
                             "Only ESP32 and ESP32-S3 targets are supported."
                             "Please refer README.md for more details")
endif()
