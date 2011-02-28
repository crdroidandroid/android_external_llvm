LOCAL_PATH := $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES := \
  X86GenAsmWriter.inc \
  X86GenAsmWriter1.inc \
  X86GenInstrNames.inc \
  X86GenRegisterNames.inc \
  X86GenRegisterInfo.h.inc

TBLGEN_TD_DIR := $(LOCAL_PATH)/..

LOCAL_SRC_FILES := \
  X86ATTInstPrinter.cpp \
  X86IntelInstPrinter.cpp \
  X86InstComments.cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)/..

LOCAL_MODULE:= libLLVMX86InstPrinter

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)