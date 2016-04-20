#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
########################################################
#cnr2chx is used for converting cnr ic to chx
########################################################
from string import Template
from optparse import OptionParser
import os, sys, logging, json, signal
from operator import eq, ne
from logging import info, error, debug, warning
############################################Global Vars####################################

#############################################CLasses#######################################