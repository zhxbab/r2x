#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
########################################################
# parse_ucode_json is used for generating the tracer 
# definition files for converting cnr avps to chx
########################################################
from string import Template
from optparse import OptionParser
import os, sys, logging, json, signal
from operator import eq, ne
from logging import info, error, debug
############################################Global Vars####################################

#############################################CLasses#######################################
class Prolog:
    def __init__(self):
        self.prolog = {}
        self.str = ""
    def gen(self,line):
        for key in line:
            if eq(key, "section"):
                continue
            else:
                self.prolog[key] = {"value":"0","pos":0,"offset":int(line[key]["offset"],16),"size":int(line[key]["size"])}

        self.prolog = sorted(self.prolog.iteritems(), key=lambda x:x[1]["offset"])
        for key in self.prolog:
            #info(key)
            self.str = self.str + "\t\"%s\": {\"value\":\"%s\",\"pos\":0x%x,\"offset\":0x%x,\"size\":0x%x,\"},\\\n"%(key[0], key[1]["value"], \
                                                                                                                   key[1]["pos"], key[1]["offset"], key[1]["size"])
        self.str = self.str + "}\n"
        
class Pram(Prolog):
    def __init__(self):
        Prolog.__init__(self)
        self.str = "PRAM_PROLOG = {\\\n"
class Ucpram(Prolog):
    def __init__(self):
        Prolog.__init__(self)
        self.str = "UCPRAM_PROLOG = {\\\n"
class Core(Prolog):
    def __init__(self):
        Prolog.__init__(self)
        self.str = "Core_PROLOG = {\\\n"
class Ucregs(Prolog):
    def __init__(self):
        Prolog.__init__(self)
        self.str = "UCREGS_PROLOG = {\\\n"
class Uccoreregs(Prolog):
    def __init__(self):
        Prolog.__init__(self)  
        self.str = "UCCOREREGS_PROLOG = {\\\n"
        
class Tracer_def:
    def __init__(self,args):
        if len(args) == 0:
            error("No parameters! Please use -h")
            sys.exit()
        else:
            signal.signal(signal.SIGINT,self.Sigint_handler)
            self._path = os.path.abspath(".")
            self.Parse_input(args)
            self.Set_logging() #Set logging
            
    def Parse_input(self,args):
        parser = OptionParser(usage="%prog arg1 arg2", version="%prog 0.1") #2016-04-18 version 0.1
        parser.add_option("-f","--file", dest="json_file", help="The ucode definition json file", type = "str", default = "None")
        parser.add_option("-n","--name", dest="chip_name", help="The tracer definition for which chip.", type = "str", default = "None")
        parser.add_option("--debug", dest="_debug", help="Enable the debug mode for parse_ucode_json", action="store_true", default = False)
        (self.option, self.additions) = parser.parse_args(args)
        
    def Set_logging(self):
        if self.option._debug == True: plevel = logging.DEBUG #plevel is the print information level
        else: plevel = logging.INFO
        logging.basicConfig(level=plevel, format="%(asctime)s %(filename)10s[line:%(lineno)6d] %(levelname)8s: %(message)s",
                        datefmt="%a, %d %b %Y %H:%M:%S", stream=sys.stdout)
    
    def Parse_json(self):
        if eq(self.option.json_file, "None") or eq(self.option.chip_name, "None"):
            error("parse_ucode_json need chip name and json file, Please use -h to see the usage")
            sys.exit(0)
        else:
            json_file = os.path.join(self._path, self.option.json_file)
            json_file_path = os.path.split(json_file)[0]
            self.tracer_def_file =  os.path.join(json_file_path, "%s_tracer_definition.py"%(self.option.chip_name))
            if os.path.exists(self.tracer_def_file):
                os.system("mv %s %s_"%(self.tracer_def_file, self.tracer_def_file))
            with open(json_file, "r") as fj:
                while True:
                    line = fj.readline()
                    if line:
                        line = line.strip()
                        line_decode = json.loads(line)
                        if eq(line_decode["section"], "pram"):
                            pram = Pram()
                            pram.gen(line_decode)
                            #info(pram.prolog)
                        elif eq(line_decode["section"], "msr"):
                            pass
                        elif eq(line_decode["section"], "fuse bank"):
                            pass
                        elif eq(line_decode["section"], "fuse"):
                            pass
                        elif eq(line_decode["section"], "defines"):
                            pass
                        elif eq(line_decode["section"], "uncore pram"):
                            ucpram = Ucpram()
                            ucpram.gen(line_decode)
                        elif eq(line_decode["section"], "uc_core_tracer_dump"):
                            uccoreregs = Uccoreregs()
                            uccoreregs.gen(line_decode)
                        elif eq(line_decode["section"], "uc_regs_tracer_dump"):
                            ucregs = Ucregs()
                            ucregs.gen(line_decode)
                        elif eq(line_decode["section"], "store_state_to_pram"):
                            core = Core()
                            core.gen(line_decode)
                        else:
                            error("Unexpected section: %s"%(line_decode["section"]))
                            sys.exit(0)
                    else:
                        break
            self.Gen_tracer_file_init()
            self.Gen_tracer_file_prologs(pram, core, ucpram, ucregs, uccoreregs)
    
    def Sigint_handler(self, signal, frame):
        critical("Ctrl+C pressed and Exit!!!")
        sys.exit(0)
        
    def Gen_tracer_file_prologs(self, pram, core, ucpram, ucregs, uccoreregs):
        with open(self.tracer_def_file, "a+") as ft:
            ft.write(pram.str)
            ft.write(core.str)
            ft.write(ucpram.str)
            ft.write(ucregs.str)
            ft.write(uccoreregs.str)
            
    def Gen_tracer_file_init(self):
        init_str = "#!/usr/bin/env python2.7\n# -*- coding: utf-8 -*-\n__author__ = \'Ken Zhao\'\n"
        with open(self.tracer_def_file, "w") as ft:
            ft.write(init_str)
        
##############################################MAIN##########################################
if __name__ == "__main__":
    tracer_def = Tracer_def(sys.argv[1:])
    tracer_def.Parse_json()
    