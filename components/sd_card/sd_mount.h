/*
 * SPDX-FileCopyrightText: 2024 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Unlicense OR CC0-1.0
 */

 #pragma once

 #include <stdint.h>
 
 #ifdef __cplusplus
 extern "C" {
 #endif
 
 esp_err_t sd_mount(char *mount_point);
 void sd_unmount(char *mount_point);
 
 #ifdef __cplusplus
 }
 #endif