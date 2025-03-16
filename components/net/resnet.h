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
 
 void resnet18(data_info_t *input, char *file);
 
 #ifdef __cplusplus
 }
 #endif