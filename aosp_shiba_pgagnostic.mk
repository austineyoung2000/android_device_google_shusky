#
# Copyright 2023 The Android Open-Source Project
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
$(call inherit-product, device/google/shusky/aosp_shiba.mk)

PRODUCT_NAME := aosp_shiba_pgagnostic
PRODUCT_MODEL := AOSP page-size agnostic Shiba 16KB ELF

PRODUCT_NO_BIONIC_PAGE_SIZE_MACRO := true
PRODUCT_MAX_PAGE_SIZE_SUPPORTED := 16384

TARGET_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_BOOTS_16K := true
