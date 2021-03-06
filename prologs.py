#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
__author__ = 'Ken Zhao'
########################################Global Vars##################################################
VMCS_STUFF_PROLOG_INFO = {\
    "mask":0xa,\
    "size":0x38,\
}
VMCS_STUFF_PROLOG = {\
}
SMM_STATE_PROLOG_INFO = {\
    "mask":0xb,\
    "size":0x300,\
}
SMM_STATE_PROLOG = {\
}
#CTR_REGS_PROLOG_INFO = {\
#    "mask":0xe,\
#    "size":0x400,\
#}
FXSAVE_PROLOG_INFO = {\
    "mask":0x8,\
    "size":0x2C8,\
}
FXSAVE_PROLOG = {\
}

CORE_PROLOG = {\
    "core_prolog_data_size": {"value":"000005D8","position":0x0,"offset":0x0,"size":0x4},\
    "core_prolog_type": {"value":"00000040","position":0x0,"offset":0x4,"size":0x4},\
    "UCODE_FLGS": {"value":"0","position":0x0,"offset":0x8,"size":0x8},\
    "g10": {"value":"0","position":0x0,"offset":0x10,"size":0x8},\
    "g15": {"value":"0","position":0x0,"offset":0x18,"size":0x8},\
    "GSTATE": {"value":"0","position":0x0,"offset":0x20,"size":0x8},\
    "LSTATE": {"value":"0","position":0x0,"offset":0x28,"size":0x8},\
    "TSTATE": {"value":"0","position":0x0,"offset":0x30,"size":0x8},\
    "UEXCEPT_STATE": {"value":"0","position":0x0,"offset":0x38,"size":0x8},\
    "SHADOW_RSP": {"value":"0","position":0x0,"offset":0x40,"size":0x8},\
    "EAX": {"value":"0","position":0x0,"offset":0x48,"size":0x8},\
    "ECX": {"value":"0","position":0x0,"offset":0x50,"size":0x8},\
    "EDX": {"value":"0","position":0x0,"offset":0x58,"size":0x8},\
    "EBX": {"value":"0","position":0x0,"offset":0x60,"size":0x8},\
    "ESP": {"value":"0","position":0x0,"offset":0x68,"size":0x8},\
    "EBP": {"value":"0","position":0x0,"offset":0x70,"size":0x8},\
    "ESI": {"value":"0","position":0x0,"offset":0x78,"size":0x8},\
    "EDI": {"value":"0","position":0x0,"offset":0x80,"size":0x8},\
    "R8": {"value":"0","position":0x0,"offset":0x88,"size":0x8},\
    "R9": {"value":"0","position":0x0,"offset":0x90,"size":0x8},\
    "R10": {"value":"0","position":0x0,"offset":0x98,"size":0x8},\
    "R11": {"value":"0","position":0x0,"offset":0xa0,"size":0x8},\
    "R12": {"value":"0","position":0x0,"offset":0xa8,"size":0x8},\
    "R13": {"value":"0","position":0x0,"offset":0xb0,"size":0x8},\
    "R14": {"value":"0","position":0x0,"offset":0xb8,"size":0x8},\
    "R15": {"value":"0","position":0x0,"offset":0xc0,"size":0x8},\
    "ESdesc": {"value":"0","position":0x0,"offset":0xc8,"size":0x8},\
    "CSdesc": {"value":"0","position":0x0,"offset":0xd0,"size":0x8},\
    "SSdesc": {"value":"0","position":0x0,"offset":0xd8,"size":0x8},\
    "DSdesc": {"value":"0","position":0x0,"offset":0xe0,"size":0x8},\
    "FSdesc": {"value":"0","position":0x0,"offset":0xe8,"size":0x8},\
    "GSdesc": {"value":"0","position":0x0,"offset":0xf0,"size":0x8},\
    "TSSdesc": {"value":"0","position":0x0,"offset":0xf8,"size":0x8},\
    "GDTdesc": {"value":"0","position":0x0,"offset":0x100,"size":0x8},\
    "IDTdesc": {"value":"0","position":0x0,"offset":0x108,"size":0x8},\
    "LDTdesc": {"value":"0","position":0x0,"offset":0x110,"size":0x8},\
    "VMCSdesc": {"value":"0","position":0x0,"offset":0x118,"size":0x8},\
    "FSdesc_ext": {"value":"0","position":0x0,"offset":0x120,"size":0x4},\
    "GSdesc_ext": {"value":"0","position":0x0,"offset":0x124,"size":0x4},\
    "TSSdesc_ext": {"value":"0","position":0x0,"offset":0x128,"size":0x4},\
    "GDTdesc_ext": {"value":"0","position":0x0,"offset":0x12c,"size":0x4},\
    "LDTdesc_ext": {"value":"0","position":0x0,"offset":0x130,"size":0x4},\
    "VMCSdesc_ext": {"value":"0","position":0x0,"offset":0x134,"size":0x4},\
    "IDTdesc_ext": {"value":"0","position":0x0,"offset":0x138,"size":0x8},\
    "FP_SW": {"value":"0","position":0x0,"offset":0x140,"size":0x2},\
    "FP_CW": {"value":"0","position":0x0,"offset":0x142,"size":0x2},\
    "FPTAG": {"value":"0","position":0x0,"offset":0x144,"size":0x2},\
    "MXCSR": {"value":"0","position":0x0,"offset":0x146,"size":0x2},\
    "FPDS": {"value":"0","position":0x0,"offset":0x148,"size":0x2},\
    "FPCS": {"value":"0","position":0x0,"offset":0x14a,"size":0x2},\
    "FPLOP": {"value":"0","position":0x0,"offset":0x14c,"size":0x4},\
    "FPLA": {"value":"0","position":0x0,"offset":0x150,"size":0x8},\
    "FPLIP": {"value":"0","position":0x0,"offset":0x158,"size":0x8},\
    "xmm0": {"value":"0","position":0x0,"offset":0x160,"size":0x10},\
    "xmm1": {"value":"0","position":0x0,"offset":0x170,"size":0x10},\
    "xmm2": {"value":"0","position":0x0,"offset":0x180,"size":0x10},\
    "xmm3": {"value":"0","position":0x0,"offset":0x190,"size":0x10},\
    "xmm4": {"value":"0","position":0x0,"offset":0x1a0,"size":0x10},\
    "xmm5": {"value":"0","position":0x0,"offset":0x1b0,"size":0x10},\
    "xmm6": {"value":"0","position":0x0,"offset":0x1c0,"size":0x10},\
    "xmm7": {"value":"0","position":0x0,"offset":0x1d0,"size":0x10},\
    "xmm8": {"value":"0","position":0x0,"offset":0x1e0,"size":0x10},\
    "xmm9": {"value":"0","position":0x0,"offset":0x1f0,"size":0x10},\
    "xmm10": {"value":"0","position":0x0,"offset":0x200,"size":0x10},\
    "xmm11": {"value":"0","position":0x0,"offset":0x210,"size":0x10},\
    "xmm12": {"value":"0","position":0x0,"offset":0x220,"size":0x10},\
    "xmm13": {"value":"0","position":0x0,"offset":0x230,"size":0x10},\
    "xmm14": {"value":"0","position":0x0,"offset":0x240,"size":0x10},\
    "xmm15": {"value":"0","position":0x0,"offset":0x250,"size":0x10},\
    "ST0": {"value":"0","position":0x0,"offset":0x260,"size":0x10},\
    "ST1": {"value":"0","position":0x0,"offset":0x270,"size":0x10},\
    "ST2": {"value":"0","position":0x0,"offset":0x280,"size":0x10},\
    "ST3": {"value":"0","position":0x0,"offset":0x290,"size":0x10},\
    "ST4": {"value":"0","position":0x0,"offset":0x2a0,"size":0x10},\
    "ST5": {"value":"0","position":0x0,"offset":0x2b0,"size":0x10},\
    "ST6": {"value":"0","position":0x0,"offset":0x2c0,"size":0x10},\
    "ST7": {"value":"0","position":0x0,"offset":0x2d0,"size":0x10},\
    "ymm0": {"value":"0","position":0x0,"offset":0x2e0,"size":0x10},\
    "ymm1": {"value":"0","position":0x0,"offset":0x2f0,"size":0x10},\
    "ymm2": {"value":"0","position":0x0,"offset":0x300,"size":0x10},\
    "ymm3": {"value":"0","position":0x0,"offset":0x310,"size":0x10},\
    "ymm4": {"value":"0","position":0x0,"offset":0x320,"size":0x10},\
    "ymm5": {"value":"0","position":0x0,"offset":0x330,"size":0x10},\
    "ymm6": {"value":"0","position":0x0,"offset":0x340,"size":0x10},\
    "ymm7": {"value":"0","position":0x0,"offset":0x350,"size":0x10},\
    "ymm8": {"value":"0","position":0x0,"offset":0x360,"size":0x10},\
    "ymm9": {"value":"0","position":0x0,"offset":0x370,"size":0x10},\
    "ymm10": {"value":"0","position":0x0,"offset":0x380,"size":0x10},\
    "ymm11": {"value":"0","position":0x0,"offset":0x390,"size":0x10},\
    "ymm12": {"value":"0","position":0x0,"offset":0x3a0,"size":0x10},\
    "ymm13": {"value":"0","position":0x0,"offset":0x3b0,"size":0x10},\
    "ymm14": {"value":"0","position":0x0,"offset":0x3c0,"size":0x10},\
    "ymm15": {"value":"0","position":0x0,"offset":0x3d0,"size":0x10},\
    "C0_MOB_CTRL": {"value":"0","position":0x0,"offset":0x3e0,"size":0x8},\
    "FCR56": {"value":"0","position":0x0,"offset":0x3e8,"size":0x8},\
    "APICBASE": {"value":"0","position":0x0,"offset":0x3f0,"size":0x8},\
    "FCR55": {"value":"0","position":0x0,"offset":0x3f8,"size":0x8},\
    "TCR": {"value":"0","position":0x0,"offset":0x400,"size":0x4},\
    "JCR": {"value":"0","position":0x0,"offset":0x404,"size":0x4},\
    "CR0": {"value":"0","position":0x0,"offset":0x408,"size":0x4},\
    "FCR16": {"value":"0","position":0x0,"offset":0x40c,"size":0x4},\
    "EFER": {"value":"0","position":0x0,"offset":0x410,"size":0x4},\
    "CRC32_POLY": {"value":"0","position":0x0,"offset":0x414,"size":0x4},\
    "MISC_ENABLE": {"value":"0","position":0x0,"offset":0x418,"size":0x8},\
    "FCR14": {"value":"0","position":0x0,"offset":0x420,"size":0x8},\
    "FCR3": {"value":"0","position":0x0,"offset":0x428,"size":0x8},\
    "FCR15": {"value":"0","position":0x0,"offset":0x430,"size":0x8},\
    "CR4": {"value":"0","position":0x0,"offset":0x438,"size":0x8},\
    "SYSENTER_EIP_64": {"value":"0","position":0x0,"offset":0x440,"size":0x8},\
    "FCR57": {"value":"0","position":0x0,"offset":0x448,"size":0x8},\
    "IP": {"value":"0","position":0x0,"offset":0x450,"size":0x8},\
    "TERRY_CONTROL": {"value":"0","position":0x0,"offset":0x458,"size":0x8},\
    "TIMEOUT_CTR": {"value":"0","position":0x0,"offset":0x460,"size":0x8},\
    "ICR": {"value":"0","position":0x0,"offset":0x468,"size":0x4},\
    "IMR": {"value":"0","position":0x0,"offset":0x46c,"size":0x4},\
    "DR6": {"value":"0","position":0x0,"offset":0x470,"size":0x4},\
    "DUMMY": {"value":"0","position":0x0,"offset":0x474,"size":0x4},\
    "PERF_CNT_0_H": {"value":"0","position":0x0,"offset":0x478,"size":0x8},\
    "PERF_CNT_1_H": {"value":"0","position":0x0,"offset":0x480,"size":0x8},\
    "PERF_CNT_2_H": {"value":"0","position":0x0,"offset":0x488,"size":0x8},\
    "DISPATCH_CTR_H": {"value":"0","position":0x0,"offset":0x490,"size":0x8},\
    "DUMMY_1": {"value":"0","position":0x0,"offset":0x498,"size":0x8},\
    "PERF_CNT_5_H": {"value":"0","position":0x0,"offset":0x4a0,"size":0x8},\
    "PERF_CNT_6_H": {"value":"0","position":0x0,"offset":0x4a8,"size":0x8},\
    "PERF_CNT_7_H": {"value":"0","position":0x0,"offset":0x4b0,"size":0x8},\
    "PERF_CCCR_0_H": {"value":"0","position":0x0,"offset":0x4b8,"size":0x8},\
    "PERF_CCCR_1_H": {"value":"0","position":0x0,"offset":0x4c0,"size":0x8},\
    "PERF_CCCR_2_H": {"value":"0","position":0x0,"offset":0x4c8,"size":0x8},\
    "DUMMY_2": {"value":"0","position":0x0,"offset":0x4d0,"size":0x8},\
    "DUMMY_3": {"value":"0","position":0x0,"offset":0x4d8,"size":0x8},\
    "PERF_CCCR_5_H": {"value":"0","position":0x0,"offset":0x4e0,"size":0x8},\
    "PERF_CCCR_6_H": {"value":"0","position":0x0,"offset":0x4e8,"size":0x8},\
    "PERF_CCCR_7_H": {"value":"0","position":0x0,"offset":0x4f0,"size":0x8},\
    "APERF_CTR_H": {"value":"0","position":0x0,"offset":0x4f8,"size":0x8},\
    "MPERF_CTR_H": {"value":"0","position":0x0,"offset":0x500,"size":0x8},\
    "FIXED_CTRL_H": {"value":"0","position":0x0,"offset":0x508,"size":0x8},\
    "GLOBAL_STATUS_H": {"value":"0","position":0x0,"offset":0x510,"size":0x8},\
    "GLOBAL_CTRL_H": {"value":"0","position":0x0,"offset":0x518,"size":0x8},\
    "GLOBAL_OVF_CTRL_H": {"value":"0","position":0x0,"offset":0x520,"size":0x8},\
    "UC_GLOBAL_CTRL_H": {"value":"0","position":0x0,"offset":0x528,"size":0x8},\
    "UC_GLOBAL_STATUS_H": {"value":"0","position":0x0,"offset":0x530,"size":0x8},\
    "UC_GLOBAL_OVF_CTRL_H": {"value":"0","position":0x0,"offset":0x538,"size":0x8},\
    "UC_FIXED_CTR0_H": {"value":"0","position":0x0,"offset":0x540,"size":0x8},\
    "UC_FIXED_CTRL_H": {"value":"0","position":0x0,"offset":0x548,"size":0x8},\
    "UC_ADDR_OPCODE_MATCH_H": {"value":"0","position":0x0,"offset":0x550,"size":0x8},\
    "UC_PERF_CTR0_H": {"value":"0","position":0x0,"offset":0x558,"size":0x8},\
    "UC_PERF_CTR1_H": {"value":"0","position":0x0,"offset":0x560,"size":0x8},\
    "UC_PERF_CTR2_H": {"value":"0","position":0x0,"offset":0x568,"size":0x8},\
    "UC_PERF_CTR3_H": {"value":"0","position":0x0,"offset":0x570,"size":0x8},\
    "DUMMY_1": {"value":"0","position":0x0,"offset":0x578,"size":0x8},\
    "DUMMY_2": {"value":"0","position":0x0,"offset":0x580,"size":0x8},\
    "DUMMY_3": {"value":"0","position":0x0,"offset":0x588,"size":0x8},\
    "DUMMY_4": {"value":"0","position":0x0,"offset":0x590,"size":0x8},\
    "UC_CTR0_CCCR_H": {"value":"0","position":0x0,"offset":0x598,"size":0x8},\
    "UC_CTR1_CCCR_SZ_H": {"value":"0","position":0x0,"offset":0x5a0,"size":0x8},\
    "UC_CTR2_CCCR_SZ_H": {"value":"0","position":0x0,"offset":0x5a8,"size":0x8},\
    "UC_CTR3_CCCR_SZ_H": {"value":"0","position":0x0,"offset":0x5b0,"size":0x8},\
    "DUMMY_5": {"value":"0","position":0x0,"offset":0x5b8,"size":0x8},\
    "DUMMY_6": {"value":"0","position":0x0,"offset":0x5c0,"size":0x8},\
    "DUMMY_7": {"value":"0","position":0x0,"offset":0x5c8,"size":0x8},\
    "DUMMY_8": {"value":"0","position":0x0,"offset":0x5d0,"size":0x8},\
    "EFLAGS": {"value":"0","position":0x0,"offset":0x5d8,"size":0x4},\
    "DUMMY_9": {"value":"0","position":0x0,"offset":0x5dc,"size":0x4},\
} # this only sync with a version cnsim, need to change later
CORE_PROLOG_INFO = {\
    "mask":0x6,\
    "size":0x5E0,\
} 
 
