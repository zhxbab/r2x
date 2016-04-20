#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
__author__ = 'Ken Zhao'
'Chip Moduel'
import chx_tracer_definition
from headers import * 
from apic import *
from prologs import *
import cnr_tracer_definition
import os, sys
from copy import deepcopy
from logging import info, error, debug, warning
############################################Global Vars######################################
SUBHDRS_MASK = 0x8
PROLOGS_MASK = 0xB240
SUBHDRS_INFO = [NANO_PEBS_SUBHDR_INFO, PEBS_JWAD2_SUBHDR_INFO, JWAD_EXCEPTION_SUBHDR_INFO, MPERF_SUBHDR_INFO] # order is essential
SUBHDRS = [NANO_PEBS_SUBHDR, PEBS_JWAD2_SUBHDR, JWAD_EXCEPTION_SUBHDR, MPERF_SUBHDR]
TR3 = 0xB248
DEBUG = 0
############################################Classes##########################################
class Chip:
    def __init__(self):
        self.major_header = MAJOR_HEADER
        self.bias = 0x0
        self.subhdrs = {}
        self.hdrs = {}
        self.prologs = {}
        self.hdrs.update(self.major_header)
        self.bias = self.bias + MAJOR_HEADER_INFO["size"]
        for index, item in enumerate(SUBHDRS_INFO):
            #info(SUBHDRS_INFO[i])
            if (SUBHDRS_MASK >> item["mask"]) & 0x1:
                subhdr = deepcopy(SUBHDRS[index])
                self.update_bias(item["size"], subhdr)
                self.subhdrs.update(subhdr)
        self.hdrs.update(self.subhdrs)
        if isinstance(self,Cnr):
            PROLOGS = [FXSAVE_PROLOG, cnr_tracer_definition.PRAM_PROLOG, cnr_tracer_definition.CORE_PROLOG, \
                           VMCS_STUFF_PROLOG, SMM_STATE_PROLOG, APIC_PROLOG, cnr_tracer_definition.UCPRAM_PROLOG, \
                           cnr_tracer_definition.UCREGS_PROLOG, cnr_tracer_definition.UCCOREREGS_PROLOG]
            PROLOGS_INFO = [FXSAVE_PROLOG_INFO, cnr_tracer_definition.PRAM_PROLOG_INFO, cnr_tracer_definition.CORE_PROLOG_INFO, \
                           VMCS_STUFF_PROLOG_INFO, SMM_STATE_PROLOG_INFO, APIC_PROLOG_INFO, cnr_tracer_definition.UCPRAM_PROLOG_INFO, \
                           cnr_tracer_definition.UCREGS_PROLOG_INFO, cnr_tracer_definition.UCCOREREGS_PROLOG_INFO]
        elif isinstance(self,Chx):
            PROLOGS = [FXSAVE_PROLOG, chx_tracer_definition.PRAM_PROLOG, CORE_PROLOG, \
                           VMCS_STUFF_PROLOG, SMM_STATE_PROLOG, APIC_PROLOG, chx_tracer_definition.UCPRAM_PROLOG, \
                           chx_tracer_definition.UCREGS_PROLOG, chx_tracer_definition.UCCOREREGS_PROLOG]
            PROLOGS_INFO = [FXSAVE_PROLOG_INFO, chx_tracer_definition.PRAM_PROLOG_INFO, CORE_PROLOG_INFO, \
                           VMCS_STUFF_PROLOG_INFO, SMM_STATE_PROLOG_INFO, APIC_PROLOG_INFO, chx_tracer_definition.UCPRAM_PROLOG_INFO, \
                           chx_tracer_definition.UCREGS_PROLOG_INFO, chx_tracer_definition.UCCOREREGS_PROLOG_INFO]
        else:
            error("Wrong chip type!")
            sys.exit(0)
            
        for index, item in enumerate(PROLOGS_INFO):
            #info(SUBHDRS_INFO[i])
            if (PROLOGS_MASK >> item["mask"]) & 0x1:
                prolog = deepcopy(PROLOGS[index])
                self.update_bias(item["size"], prolog)
                self.prologs.update(prolog)
                
        self.hdrs.update((self.prologs))
        self.major_dump = deepcopy(self.hdrs)
        self.major_dump = sorted(self.major_dump.iteritems(), key=lambda x:x[1]["offset"],reverse=True)
#        if (DEBUG):
#            if isinstance(self,Cnr):
#                info("CNR pattern")
#            elif isinstance(self,Chx):
#                info("CHX pattern")
#            else:
#                error("Wrong chip type!")
#                sys.exit(0)


    def update_bias(self,bias,tracer_seg):
        for key in tracer_seg:
            tracer_seg[key]["offset"] = tracer_seg[key]["offset"] + self.bias
        self.bias = self.bias + bias
    def check_major_dump(self):
        for key in self.major_dump:
            info("%s: value: %s, offset: 0x%x, size: 0x%x, pos: 0x%x"%(key[0],key[1]["value"],key[1]["offset"],key[1]["size"],key[1]["position"]))
        
class Cnr(Chip):
    def __init__(self):
        Chip.__init__(self)

class Chx(Chip):
    def __init__(self):
        Chip.__init__(self)
        for key in self.major_dump:
            key[1]["is_in_cnr"] = 0
    def check_in_cnr(self):
        for key in self.major_dump:
            if not key[1]["is_in_cnr"]:
                key[1]["value"] = "00"*key[1]["size"]
                debug("%s is not in cnr, size is %x, value is %s"%(key[0],key[1]["size"],key[1]["value"]))
                
                
                
                
                

        