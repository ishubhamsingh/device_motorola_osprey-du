#
# Copyright (C) 2016 The DirtyUnicorns Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from osprey device
$(call inherit-product, device/motorola/osprey/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := osprey
PRODUCT_NAME := full_osprey

$(call inherit-product-if-exists, vendor/motorola/osprey/osprey-vendor.mk)
