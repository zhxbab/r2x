#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
__author__ = 'Ken Zhao'
########################################Global Vars##################################################
MAJOR_HEADER = {\
    "magic":{"value":"DEAD","position":0x0,"offset":0x0,"size":0x2,"DOC":"magic number = 0xDEAD "},\
    "tracer_version":{"value":"36","position":0x0,"offset":0x2,"size":0x1,"DOC":"CNQ = 0x34, CNR = 0x36 "},\
    "cn_version":{"value":"00","position":0x0,"offset":0x3,"size":0x1,"DOC":"0x01 "},\
    "hdr_details":{"value":"0049","position":0x0,"offset":0x4,"size":0x2,"DOC":"TR3[0:15] "},\
    "action_vector":{"value":"0180","position":0x0,"offset":0x6,"size":0x2,"DOC":"TR6[0:15] "},\
    "events":{"value":"00000000","position":0x0,"offset":0x8,"size":0x4,"DOC":"TR1,Event of dump is caused "},\
    "dump_vector":{"value":"B248","position":0x0,"offset":0xc,"size":0x2,"DOC":"Dump vector,TR3[0:15] "},\
    "last_exception_vector":{"value":"00","position":0x0,"offset":0xe,"size":0x1,"DOC":"last_exception_vector "},\
    "last_swint_vector":{"value":"00","position":0x0,"offset":0xf,"size":0x1,"DOC":"last_swint_vector "},\
    "next_lip_l":{"value":"0","position":0x0,"offset":0x10,"size":0x4,"DOC":"Next instr RIP l "},\
    "next_lip_h":{"value":"0","position":0x0,"offset":0x14,"size":0x4,"DOC":"Next instr RIP h "},\
    "ctr_0_l":{"value":"0","position":0x0,"offset":0x18,"size":0x4,"DOC":"Current TR7 l "},\
    "ctr_0_h":{"value":"0","position":0x0,"offset":0x1c,"size":0x4,"DOC":"Current TR7 h "},\
    "last_lip_l":{"value":"00000000","position":0x0,"offset":0x20,"size":0x4,"DOC":"last instr RIP l "},\
    "last_lip_h":{"value":"00000000","position":0x0,"offset":0x24,"size":0x4,"DOC":"last instr RIP h "},\
}#position is related to the Nth 4Byte from the header start,name is key, And data is [offset size(byte) description]
MAJOR_HEADER_INFO = {\
    "size":0x28, \
}
NANO_PEBS_SUBHDR = {\
    "eax":{"value":"0","position":0x0, "offset":0x0,"size":0x4,"DOC":"eax"},\
    "ebx":{"value":"0","position":0x0,"offset":0x4,"size":0x4,"DOC":"ebx"},\
    "edx":{"value":"0","position":0x0, "offset":0x8,"size":0x4,"DOC":"edx"},\
    "eflags":{"value":"0","position":0x0,"offset":0xc,"size":0x4,"DOC":"eflags"},\
}
NANO_PEBS_SUBHDR_INFO = {\
    "mask":0x1, \
    "size":0x10, \
}
PEBS_JWAD2_SUBHDR = {\
    "eflags":{"value":"0","position":0x0,"offset":0x0,"size":0x4,"DOC":"eflags"},\
    "pebs_undefined":{"value":"0","position":0x0,"offset":0x4,"size":0x4,"DOC":"Nodefined"},\
    "rax":{"value":"0","position":0x0, "offset":0x8,"size":0x8,"DOC":"rax"},\
    "rbx":{"value":"0","position":0x0,"offset":0x10,"size":0x8,"DOC":"rbx"},\
    "rcx":{"value":"0","position":0x0, "offset":0x18,"size":0x8,"DOC":"rcx"},\
    "rdx":{"value":"0","position":0x0, "offset":0x20,"size":0x8,"DOC":"rdx"},\
    "rsi":{"value":"0","position":0x0,"offset":0x28,"size":0x8,"DOC":"rsi"},\
    "rdi":{"value":"0","position":0x0, "offset":0x30,"size":0x8,"DOC":"rdi"},\
    "rbp":{"value":"0","position":0x0,"offset":0x38,"size":0x8,"DOC":"rbp"},\
    "rsp":{"value":"0","position":0x0, "offset":0x40,"size":0x8,"DOC":"rsp"},\
    "ctr0":{"value":"0","position":0x0, "offset":0x48,"size":0x8,"DOC":"perf ctr0"},\
    "ctr1":{"value":"0","position":0x0,"offset":0x50,"size":0x8,"DOC":"perf ctr1(local tr7)"},\
    "tsc":{"value":"0","position":0x0, "offset":0x58,"size":0x8,"DOC":"the read uncore hdw tsc"},\
}
PEBS_JWAD2_SUBHDR_INFO = {\
    "mask":0x2, \
    "size":0x60
}
JWAD_EXCEPTION_SUBHDR = {\
    "c2_iir_l":{"value":"00000000","position":0x0,"offset":0x0,"size":0x4,"DOC":"c2_iir(about the last inst) l "},\
    "c2_iir_h":{"value":"00000000","position":0x0,"offset":0x4,"size":0x4,"DOC":"c2_iir(about the last inst) h "},\
    "c2_xcr_l":{"value":"00000000","position":0x0,"offset":0x8,"size":0x4,"DOC":"c2_xcr(interrput/exception causes stuff) l "},\
    "c2_xcr_h":{"value":"00000000","position":0x0,"offset":0xc,"size":0x4,"DOC":"c2_xcr(interrput/exception causes stuff) h "},\
    "msr_misc_enable_l":{"value":"00141C81","position":0x0, "offset":0x10,"size":0x4,"DOC":"msr_misc_enable l "},\
    "msr_misc_enable_h":{"value":"00000000","position":0x0, "offset":0x14,"size":0x4,"DOC":"msr_misc_enable h "},\
    "c1_jcr":{"value":"1063FD00","position":0x0,"offset":0x18,"size":0x4,"DOC":"c1_jcr(vmx state) "},\
    "gstate":{"value":"80000000","position":0x0, "offset":0x1c,"size":0x4,"DOC":"misc state "},\
    "c2_xmr":{"value":"00000003","position":0x0, "offset":0x20,"size":0x4,"DOC":"c2_xmr(interrupt mask) "},\
    "last_intr_xcr_lo":{"value":"00000000","position":0x0,"offset":0x24,"size":0x4,"DOC":"last_intr_xcr_lo(CNQ used to be efer) "},\
    "cr0":{"value":"0","position":0x0, "offset":0x28,"size":0x4,"DOC":"cr0 "},\
    "cr4":{"value":"0","position":0x0,"offset":0x2c,"size":0x4,"DOC":"cr4 "},\
    "apic_ctrl":{"value":"002002B4","position":0x0, "offset":0x30,"size":0x4,"DOC":"apic_ctrl "},\
    "cr8":{"value":"0","position":0x0, "offset":0x34,"size":0x4,"DOC":"cr8 "},\
    "c2_ipr":{"value":"00008000","position":0x0,"offset":0x38,"size":0x4,"DOC":"c2_ipr(pending interrupts used to be rcx) "},\
    "ecx":{"value":"0","position":0x0,"offset":0x3c,"size":0x4,"DOC":"ecx "},\
    "cr2_l":{"value":"0","position":0x0, "offset":0x40,"size":0x4,"DOC":"cr2 l "},\
    "cr2_h":{"value":"0","position":0x0, "offset":0x44,"size":0x4,"DOC":"cr2 h "},\
    "uexcept_state_l":{"value":"00000000","position":0x0, "offset":0x48,"size":0x4,"DOC":"uexcept_state l "},\
    "uexcept_state_h":{"value":"00000000","position":0x0, "offset":0x4c,"size":0x4,"DOC":"uexcept_state h "},\
 }
JWAD_EXCEPTION_SUBHDR_INFO = {\
    "mask":0x3, \
    "size": 0x50,\
}
MPERF_SUBHDR = {\
    "raw_mperf":{"value":0x0,"position":0x0,"offset":0x0,"size":0x8,"DOC":"bus count"},\
    "apic_timer":{"value":0x0,"position":0x0,"offset":0x8,"size":0x8,"DOC":"apic_timer(new in 0B)"},\
}
MPERF_SUBHDR_INFO = {\
    "mask":0x4, \
    "size":0x10, \
}