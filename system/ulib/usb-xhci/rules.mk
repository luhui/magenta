# Copyright 2016 The Fuchsia Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_TYPE := userlib

MODULE_SRCS := \
    $(LOCAL_DIR)/xhci.c \
    $(LOCAL_DIR)/xhci-device-manager.c \
    $(LOCAL_DIR)/xhci-root-hub.c \
    $(LOCAL_DIR)/xhci-transfer.c \
    $(LOCAL_DIR)/xhci-trb.c \
    $(LOCAL_DIR)/xhci-util.c \

MODULE_STATIC_LIBS += \
    ulib/ddk \
    ulib/magenta

include make/module.mk
