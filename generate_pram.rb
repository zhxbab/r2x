#!/usr/bin/env ruby_dv_1_9_2
#!/usr/bin/env ruby_dv_1_9_2 --disable-gems
#
require 'json'

$chip = ARGV[0]
$ucodedefine = ARGV[1]
raise "chip not defined" if ! $chip
$output =  "#{$chip}_tracer_autogen.pm"
$all_subs = []

def usage
  print "#{$0} <ucodedefine>     covert pram ucode define file into la2avp tracer data structure\n"
  exit
end

def log(input)
  $handle.puts(input)
end

class ParseCommon 

  def initialize(cfg)
    @cfg = cfg
  end

  # keys that we auto skip
  def default_skip(input)
    return true if input == "section"
    return false
  end

  def sub_name
    "Initialize#{$chip}#{self.class.to_s}"
  end

  def merge(input_cfg)
    @cfg.merge!(input_cfg)
  end

  def run
    $all_subs << sub_name
    log "package Tracer;"
    log "sub #{sub_name}  {"
    @cfg.each do |key,val|
      if default_skip(key)
      else
        current_entry = match(key)
        if current_entry
          current_entry = current_entry.upcase  # more consistent autogen code
          current_offset = val['offset'].hex
          current_size = val['size']
          log("@{$#{@variable_name}{\"#{current_entry}\"}} = (#{sprintf("0x%x",current_offset)} , #{current_size} ); ")
        end
      end
    end
    log "}"
    log "1;"
  end


end

class Pram < ParseCommon

  def initialize(args)
    super(args)
    @variable_name = "DEFAULT_CHECKPOINT_PRAM"
  end

  def match(input)
    if input =~ /(\S+)_ADDR/
      current_entry = $1
    else
      raise "unexpected entry #{input}"
    end
    current_entry
  end

end

class UCPram < ParseCommon

  def initialize(args)
    super(args)
    @variable_name = "DEFAULT_CHECKPOINT_UC_PRAM"
  end

  def match(input)
    if input =~ /(\S+)_UCADDR/
      current_entry = $1
    else
      raise "unexpected entry #{input}"
    end
    current_entry
  end
end

class UCRegs < ParseCommon

  def initialize(args)
    super(args)
    @variable_name = "DEFAULT_CHECKPOINT_UC_REGS"
  end

  def match(input)
    input
  end
end

class UCCoreRegs < ParseCommon

  def initialize(args)
    super(args)
    @variable_name = "DEFAULT_CHECKPOINT_UC_CORE_REGS"
  end

  def match(input)
    input
  end
end



class Core < ParseCommon

  def initialize(args)
    super(args)
    @variable_name = "DEFAULT_CHECKPOINT_CORE"
  end

  # match all keys as it is
  def match(input)
    input 
  end

end


=begin
  UncoreRegs  merges the two section "uc_regs_tracer_dump" and "uc_L2_tracer_dump"
=end

@ucore_regs = nil

usage if ARGV.empty?
raise "no ucode define " if ! $ucodedefine
$handle = File.open($output,"w")

  File.open($ucodedefine).each do |line|
    obj = JSON.parse(line)
    if obj['section'] == 'pram'
      parse = Pram.new(obj)
      parse.run
    elsif obj['section'] == 'uncore pram'
      parse =  UCPram.new(obj) 
      parse.run
    elsif obj['section'] == 'store_state_to_pram'
      #print "here. obj is #{obj}\n"
      parse =  Core.new(obj) 
      parse.run
    elsif (obj['section'] == 'uc_regs_tracer_dump') 
#||  (obj['section'] == 'uc_L2_tracer_dump')
      if ! @ucore_regs
        @ucore_regs =  UCRegs.new(obj) 
      else
        @ucore_regs.merge(obj)
      end
    elsif (obj['section'] == 'uc_core_tracer_dump')
      parse =  UCCoreRegs.new(obj) 
      parse.run
# not used
    elsif obj['section'] == 'msr'
    elsif obj['section'] == 'fuse bank'
    elsif obj['section'] == 'fuse'
    elsif obj['section'] == 'defines'
    else
      raise "unexpected section #{obj['section']}"
    end
  end

  @ucore_regs.run  # this generates the json after merge


  log "package Tracer;"
  log "sub Initialize#{$chip}Dumps {"
  $all_subs.each do |current|
    log " #{current}();"
  end
  log "}"
  

$handle.close
    

