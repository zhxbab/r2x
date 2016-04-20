#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
########################################################
#cnr2chx is used for converting cnr ic to chx
########################################################
from string import Template
from optparse import OptionParser
import os, sys, logging, json, signal, re
from operator import eq, ne
from logging import info, error, debug, warning
import gzip
from chip import *
############################################Global Vars####################################
def error_exit(cmd):
    error(cmd)
    sys.exit(0)
cnr = Cnr()
chx = Chx()
#############################################CLasses#######################################
class Avp:
    def __init__(self,args):
        if len(args) == 0:
            error("No parameters! Please use -h")
            sys.exit()
        else:
            signal.signal(signal.SIGINT,self.Sigint_handler)
            self.Parse_input(args)
            self.Set_logging() #Set logging
            self._path = os.path.abspath(".")
            if ne(self.option.cnr_avp, "None"):
                self.cnr_avp_file_name = os.path.join(self._path, self.option.cnr_avp)
            else:
                error_exit("You must input a cnr avp file")
            if ne(self.option.chx_avp, "None"):
                self.chx_avp_file_name = os.path.join(self._path, self.option.chx_avp)
            else:
                warning("You don't set the chx avp file name, so change it to %s_chx.avp"%(self.cnr_avp_file_name.split(".")[0]))
                self.chx_avp_file_name = "%s_chx.avp"%(self.cnr_avp_file_name.split(".")[0])
            
            if eq(self.cnr_avp_file_name.split(".")[-1],"avp") or eq(self.cnr_avp_file_name.split(".")[-1],"ic"):
                self.cnr_avp = open(self.cnr_avp_file_name,"r")
            elif eq(self.cnr_avp_file_name.split(".")[-1],"gz"):
                self.cnr_avp = gzip.open(self.cnr_avp_file_name)
            else:
                error_exit("Wrong input avp format!")
            if self.option.bochs:
                self.initial_addr = int(self.option.major_dump_addr,16)
            else:
                self.initial_addr = int(self.option.major_dump_addr,16)-0x100000
            self.results_addr = int(self.option.major_dump_addr,16)

            self.initial_flag = 0
            self.results_flag = 0
            self.initial = {}
            self.results = {}
            self.initial_dump = {}
            self.results_dump = {}
            self.initial_dump_chx = {}
            self.results_dump_chx = {}
            
            self.chx_avp = open(self.chx_avp_file_name,"w")
            if not self.chx_avp:
                error_exit("Open %s failed"%(self.chx_avp_file_name))
            
    def Parse_input(self,args):
        parser = OptionParser(usage="%prog arg1 arg2", version="%prog 0.1") #2016-04-18 version 0.1
        parser.add_option("-i","--input", dest="cnr_avp", help="The input cnr avp file", type = "str", default = "None")
        parser.add_option("-o","--output", dest="chx_avp", help="The output chx avp file", type = "str", default = "None")
        parser.add_option("--debug", dest="_debug", help="Enable the debug mode for parse_ucode_json", action="store_true", default = False)
        parser.add_option("-b", dest="bochs", help="Enable the bochs avp mode", action="store_true", default = False)
        parser.add_option("-a","--addr", dest="major_dump_addr", help="The major dump addr [default:%default]", type="str", default = "40000000")
        (self.option, self.additions) = parser.parse_args(args)
        
    def Set_logging(self):
        if self.option._debug == True: plevel = logging.DEBUG #plevel is the print information level
        else: plevel = logging.INFO
        logging.basicConfig(level=plevel, format="%(asctime)s %(filename)10s[line:%(lineno)6d] %(levelname)8s: %(message)s",
                        datefmt="%a, %d %b %Y %H:%M:%S", stream=sys.stdout)
    def Sigint_handler(self, signal, frame):
        critical("Ctrl+C pressed and Exit!!!")
        sys.exit(0)
        
    def Parse_avp(self):
        while True:
            line = self.cnr_avp.readline()
            if line:
                line = line.strip()
                m = re.search(r"initial {",line)
                if m:
                    self.initial_flag = 1
                m = re.search(r"program {",line)
                if m:
                    self.initial_flag = 0
                m = re.search(r"results {",line)
                if m:
                    self.results_flag = 1
                    self.initial_flag = 0
                #info(line)
                m = re.search(r"memory\s*0x(\w+)\s*0x(\w+)",line)
                if m:
                    addr = m.group(1)
                    data = m.group(2)
                #info(addr)
                    if self.initial_flag == 1 and self.results_flag == 0:
                        if(int(addr,16) <=(self.initial_addr + cnr.bias)) and (int(addr,16) >=(self.initial_addr)):
                            self.initial_dump[addr] = data
                        else:
                            self.initial[addr] = data
                    elif self.initial_flag == 0 and self.results_flag == 1:
                        if(int(addr,16) <=(self.results_addr + cnr.bias)) and (int(addr,16) >=(self.results_addr)):
                            self.results_dump[addr] = data
                        else:
                            self.results[addr] = data
                    else:
                        pass
            else:
                break
        
        self.cnr_avp.close()
    def Update_mem_card(self,addr,dump_chx,dump_cnr):
        last_addr =  addr + cnr.bias
        str_cnr=""
        for key in sorted(dump_cnr.iteritems(),key=lambda x:x[0],reverse=True):
            current_addr = int(key[0],16)
            if(last_addr - current_addr) == 0x4:
                str_cnr = str_cnr + key[1]
            elif(last_addr - current_addr) >= 0x4:
                debug("last addr is %x and current_addr is %x"%(last_addr,current_addr))
                str_cnr = str_cnr + "F4"*(last_addr - current_addr - 0x4) + key[1]
            else:
                error_exit("last_addr - current_addr < 0x4")
            last_addr = current_addr
        if len(str_cnr) != cnr.bias*2:
            error_exit("str_cnr length is %x, but cnr need %x"%(len(str_cnr)/2,cnr.bias))
            
        
    def Gen_avp(self):
        self.Update_mem_card(self.initial_addr,self.initial_dump_chx,self.initial_dump)
        self.Update_mem_card(self.results_addr,self.results_dump_chx,self.results_dump)
        self.Gen_mem_card("initial")
        self.Gen_mem_card("results")
        self.chx_avp.write("end")
        self.chx_avp.close()
        
    def Gen_mem_card(self,cmd):
        if eq(cmd, "initial"):
            mem_card = self.initial
            mem_card_dump = self.initial_dump_chx  
        elif eq(cmd, "results"):
            mem_card = self.results
            mem_card_dump = self.results_dump_chx
        else:
            error_exit("Wrong mem card type!")
        self.chx_avp.write("%s {\n"%(cmd))
        for key in sorted(mem_card.iteritems(),key=lambda x:x[0]):
            self.chx_avp.write("\tmemory\t0x%s\t0x%s\n"%(key[0],key[1]))
        self.chx_avp.write("\\\\\tCHX new tracer dump data\n")
        for key in sorted(mem_card_dump.iteritems(),key=lambda x:x[0]):
            self.chx_avp.write("\tmemory\t0x%s\t0x%s\n"%(key[0],key[1]))
        self.chx_avp.write("}\n")
        
        
        
###########################################Main############################################
avp = Avp(sys.argv[1:])
avp.Parse_avp()
avp.Gen_avp()