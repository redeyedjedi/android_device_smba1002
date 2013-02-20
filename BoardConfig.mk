#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from the common version first
-include device/malata/smba_common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := harmony,smba1002

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x15E00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x18FF8940
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAVE_MAGNETIC_SENSOR := true

BOARD_USES_NMEA_GPS := true

TARGET_PROVIDES_INIT_RC := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/malata/smba1002/default_recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_HAS_MISC := true
BOARD_HAS_REMOVABLE_STORAGE := true

