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
#include "core.h"

esp_err_t init_camera(void);
data_info_t *get_32x32_jpg();
 
#ifdef __cplusplus
}
#endif