#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
#################################Global Vars#################################
APIC_PROLOG = {\
    "apic_prolog_data_size": {"value":"000000100","position":0x0,"offset":0x0,"size":0x4,"DOC":"apic data size "},\
    "apic_prolog_type":      {"value":"000002000","position":0x0,"offset":0x4,"size":0x4,"DOC":"apic  type "},\
    "apic_undefined_0":      {"value":"000000000","position":0x0,"offset":0x8,"size":0x4,"DOC":"apic  type "},\
    "apic_undefined_1":      {"value":"000000000","position":0x0,"offset":0xc,"size":0x4,"DOC":"apic  type "},\
    "APIC ID": {"value":"00000000","position":0x0,"offset":0x10,"size":0x4,"DOC":"APIC ID "},\
    "APIC VER": {"value":"01050015","position":0x0,"offset":0x14,"size":0x4,"DOC":"APIC VER "},\
    "APIC RESVD_0": {"value":"00000000","position":0x0,"offset":0x18,"size":0x4,"DOC":"APIC RESVD 0"},\
    "APIC RESVD_1": {"value":"012000FF","position":0x0,"offset":0x1c,"size":0x4,"DOC":"APIC RESVD 1"},\
    "APIC RESVD_2": {"value":"00011422","position":0x0,"offset":0x20,"size":0x4,"DOC":"APIC RESVD 2"},\
    "APIC TPR": {"value":"00000000","position":0x0,"offset":0x28,"size":0x4,"DOC":"APIC TPR "},\
    "APIC PPR": {"value":"00000000","position":0x0,"offset":0x30,"size":0x4,"DOC":"APIC PPR "},\
    "APIC LDR": {"value":"01000000","position":0x0,"offset":0x3c,"size":0x4,"DOC":"APIC LDR "},\
    "APIC DFR": {"value":"FFFFFFFF","position":0x0,"offset":0x40,"size":0x4,"DOC":"APIC DFR "},\
    "APIC SVR": {"value":"0000013F","position":0x0,"offset":0x44,"size":0x4,"DOC":"APIC SVR "},\
    "APIC ISR_0": {"value":"00000000","position":0x0,"offset":0x48,"size":0x4,"DOC":"APIC ISR_0 "},\
    "APIC ISR_1": {"value":"00000000","position":0x0,"offset":0x4c,"size":0x4,"DOC":"APIC ISR_1 "},\
    "APIC ISR_2": {"value":"00000000","position":0x0,"offset":0x50,"size":0x4,"DOC":"APIC ISR_2 "},\
    "APIC ISR_3": {"value":"00000000","position":0x0,"offset":0x54,"size":0x4,"DOC":"APIC ISR_3 "},\
    "APIC ISR_4": {"value":"00000000","position":0x0,"offset":0x58,"size":0x4,"DOC":"APIC ISR_4 "},\
    "APIC ISR_5": {"value":"00000000","position":0x0,"offset":0x5c,"size":0x4,"DOC":"APIC ISR_5 "},\
    "APIC ISR_6": {"value":"00000000","position":0x0,"offset":0x60,"size":0x4,"DOC":"APIC ISR_6 "},\
    "APIC ISR_7": {"value":"00000000","position":0x0,"offset":0x64,"size":0x4,"DOC":"APIC ISR_7 "},\
    "APIC TMR_0": {"value":"00000000","position":0x0,"offset":0x68,"size":0x4,"DOC":"APIC TMR_0 "},\
    "APIC TMR_1": {"value":"00000000","position":0x0,"offset":0x6c,"size":0x4,"DOC":"APIC TMR_1 "},\
    "APIC TMR_2": {"value":"00000000","position":0x0,"offset":0x70,"size":0x4,"DOC":"APIC TMR_2 "},\
    "APIC TMR_3": {"value":"00040004","position":0x0,"offset":0x74,"size":0x4,"DOC":"APIC TMR_3 "},\
    "APIC TMR_4": {"value":"00060004","position":0x0,"offset":0x78,"size":0x4,"DOC":"APIC TMR_4 "},\
    "APIC TMR_5": {"value":"000A0006","position":0x0,"offset":0x7c,"size":0x4,"DOC":"APIC TMR_5 "},\
    "APIC TMR_6": {"value":"00000000","position":0x0,"offset":0x80,"size":0x4,"DOC":"APIC TMR_6 "},\
    "APIC TMR_7": {"value":"00000000","position":0x0,"offset":0x84,"size":0x4,"DOC":"APIC TMR_7 "},\
    "APIC IRR_0": {"value":"00000000","position":0x0,"offset":0x88,"size":0x4,"DOC":"APIC IRR_0 "},\
    "APIC IRR_1": {"value":"00000000","position":0x0,"offset":0x8c,"size":0x4,"DOC":"APIC IRR_1 "},\
    "APIC IRR_2": {"value":"00000000","position":0x0,"offset":0x90,"size":0x4,"DOC":"APIC IRR_2 "},\
    "APIC IRR_3": {"value":"00000000","position":0x0,"offset":0x94,"size":0x4,"DOC":"APIC IRR_3 "},\
    "APIC IRR_4": {"value":"00000000","position":0x0,"offset":0x98,"size":0x4,"DOC":"APIC IRR_4 "},\
    "APIC IRR_5": {"value":"00000000","position":0x0,"offset":0x9c,"size":0x4,"DOC":"APIC IRR_5 "},\
    "APIC IRR_6": {"value":"00000000","position":0x0,"offset":0xa0,"size":0x4,"DOC":"APIC IRR_6 "},\
    "APIC IRR_7": {"value":"00000000","position":0x0,"offset":0xa4,"size":0x4,"DOC":"APIC IRR_7 "},\
    "APIC ESR": {"value":"00000000","position":0x0,"offset":0xa8,"size":0x4,"DOC":"APIC ESR "},\
    "APIC ICR0": {"value":"0004002F","position":0x0,"offset":0xc8,"size":0x4,"DOC":"APIC ICR0 "},\
    "APIC ICR1": {"value":"01000000","position":0x0,"offset":0xcc,"size":0x4,"DOC":"APIC ICR1 "},\
    "APIC LVTT": {"value":"000300FD","position":0x0,"offset":0xd0,"size":0x4,"DOC":"APIC LVTT "},\
    "APIC LVTS": {"value":"00010000","position":0x0,"offset":0xd4,"size":0x4,"DOC":"APIC LVTS "},\
    "APIC LVTP": {"value":"000000FE","position":0x0,"offset":0xd8,"size":0x4,"DOC":"APIC LVTP "},\
    "APIC LVT0": {"value":"0001003F","position":0x0,"offset":0xdc,"size":0x4,"DOC":"APIC LVT0 "},\
    "APIC LVT1": {"value":"000004FF","position":0x0,"offset":0xe0,"size":0x4,"DOC":"APIC LVT1 "},\
    "APIC LVTE": {"value":"000000E3","position":0x0,"offset":0xe4,"size":0x4,"DOC":"APIC LVTE "},\
    "APIC INIT_COUNT": {"value":"00000000","position":0x0,"offset":0xe8,"size":0x4,"DOC":"APIC INIT_COUNT "},\
    "APIC TIMER": {"value":"00000000","position":0x0,"offset":0xec,"size":0x4,"DOC":"APIC TIMER "},\
    "APIC TIMER_DIV": {"value":"0000000B","position":0x0,"offset":0x100,"size":0x4,"DOC":"APIC TIMER_DIV "},\
    "APIC RESVD_3": {"value":"00000001","position":0x0,"offset":0x104,"size":0x4,"DOC":"APIC RESVD 3"},\
 }#offset 0x28,0x30,0x38,0x100,etc
APIC_PROLOG_INFO = {\
    "mask":0xd,
    "size":0x108,\
}