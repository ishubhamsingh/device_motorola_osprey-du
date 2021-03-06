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

ifneq ($(filter osprey,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

FIRMWARE_MBA_IMAGES := \
    mba.mbn.gz

FIRMWARE_MBA_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MBA_IMAGES)))
$(FIRMWARE_MBA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MBA Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MBA_SYMLINKS)

FIRMWARE_MODEM_IMAGES := \
    modem.b00.gz modem.b01.gz modem.b02.gz modem.b03.gz modem.b04.gz modem.b05.gz \
    modem.b06.gz modem.b07.gz modem.b08.gz modem.b10.gz modem.b11.gz modem.b14.gz \
    modem.b15.gz modem.b16.gz modem.b17.gz modem.b18.gz modem.b19.gz modem.b20.gz \
    modem.b23.gz modem.b24.gz modem.b25.gz modem.b27.gz modem.b28.gz modem.mdt.gz

FIRMWARE_MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MODEM_IMAGES)))
$(FIRMWARE_MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MODEM_SYMLINKS)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
