package Tracer;
sub InitializecnrPram  {
@{$DEFAULT_CHECKPOINT_PRAM{"CR2"}} = (0x0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IA32_LSTAR"}} = (0x8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SYSEXIT_CSDESC_32"}} = (0x10 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SYSEXIT_CSDESC_64"}} = (0x18 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SYSENTER_CS"}} = (0x20 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LA_DESC0"}} = (0x24 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LA_DESC1"}} = (0x26 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FSR0"}} = (0x28 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"ES_PRAM"}} = (0x30 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CS_PRAM"}} = (0x32 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SS_PRAM"}} = (0x34 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"DS_PRAM"}} = (0x36 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FS_PRAM"}} = (0x38 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GS_PRAM"}} = (0x3a , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR_PRAM"}} = (0x3c , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LDT_PRAM"}} = (0x3e , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"ALT_BOOT_ADDR"}} = (0x40 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CR3"}} = (0x48 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LOCAL_CONTEXT_ENT0"}} = (0x50 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LOCAL_CONTEXT_ENT1"}} = (0x58 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LOCAL_CONTEXT_ENT2"}} = (0x60 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LOCAL_CONTEXT_ENT3"}} = (0x68 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"DR7"}} = (0x70 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR4"}} = (0x78 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR5"}} = (0x80 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR0"}} = (0x88 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR1"}} = (0x90 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR46"}} = (0x98 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR2"}} = (0xa0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TPM_CTRL"}} = (0xa8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PWR_CTRL_LO"}} = (0xb0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MFG_ID"}} = (0xb8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PSN_LO"}} = (0xc0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PSN_HI"}} = (0xc8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MSR_PASSWD_LO"}} = (0xd0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PATCHX_ID"}} = (0xd8 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"HIGHEST_PATCHRAM_USED"}} = (0xdc , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR0"}} = (0xe0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GLOBAL_CONTEXT_EPTP_ENT0"}} = (0xe8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GLOBAL_CONTEXT_EPTP_ENT1"}} = (0xf0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GLOBAL_CONTEXT_EPTP_ENT2"}} = (0xf8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GLOBAL_CONTEXT_EPTP_ENT3"}} = (0x100 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"HARDWARE_CR3"}} = (0x108 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VPID"}} = (0x110 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GLOBAL_CONTEXT_VPID_ENT0"}} = (0x112 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GLOBAL_CONTEXT_VPID_ENT1"}} = (0x114 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GLOBAL_CONTEXT_VPID_ENT2"}} = (0x116 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GLOBAL_CONTEXT_VPID_ENT3"}} = (0x118 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR17"}} = (0x120 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"KERNEL_GS_BASE"}} = (0x128 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SYSENTER_ESP"}} = (0x130 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IA32_STAR"}} = (0x138 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IA32_CSTAR"}} = (0x140 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IA32_BIOS_SIG"}} = (0x148 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_BASIC"}} = (0x150 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_PINBASED_CTLS"}} = (0x158 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_PROCBASED_CTLS"}} = (0x160 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_PROCBASED_CTLS2"}} = (0x168 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_EXIT_CTLS"}} = (0x170 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_ENTRY_CTLS"}} = (0x178 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_EPT_VPID_CAP"}} = (0x180 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_TRUE_PINBASED_CTLS"}} = (0x188 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_TRUE_PROCBASED_CTLS"}} = (0x190 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_TRUE_EXIT_CTLS"}} = (0x198 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_TRUE_ENTRY_CTLS"}} = (0x1a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_MISC"}} = (0x1a8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_CR0_FIXED0"}} = (0x1b0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_CR0_FIXED1"}} = (0x1b8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_CR4_FIXED0"}} = (0x1c0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_CR4_FIXED1"}} = (0x1c8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_VMCS_ENUM"}} = (0x1d0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR6"}} = (0x1d8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR8"}} = (0x1e0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR9"}} = (0x1e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR10"}} = (0x1f0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR11"}} = (0x1f8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR12"}} = (0x200 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR13"}} = (0x208 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TURBO_MODE_CONFIG_2"}} = (0x210 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PAD67"}} = (0x218 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR7"}} = (0x220 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PERF_GLOBAL_CTRL"}} = (0x228 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR2"}} = (0x230 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR3"}} = (0x238 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR4"}} = (0x240 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR5"}} = (0x248 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR6"}} = (0x250 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR7"}} = (0x258 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR1"}} = (0x260 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"DS_AREA"}} = (0x268 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR0_FUSES"}} = (0x270 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR1_FUSES"}} = (0x278 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR3_RESET"}} = (0x280 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SYSEXIT_SSDESC"}} = (0x288 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMXON_PTR"}} = (0x290 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CURRENT_VMCS_DESC"}} = (0x298 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_IIR_SAVE"}} = (0x2a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_EXCEPTION_CS_DESC"}} = (0x2a8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CR4_ALLOWED_MASK"}} = (0x2b0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR0_ALLOWED_MASK"}} = (0x2b8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR1_ALLOWED_MASK"}} = (0x2c0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_RSTRT_ECX"}} = (0x2c8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_RSTRT_ESI"}} = (0x2d0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_RSTRT_EDI"}} = (0x2d8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_RSTRT_EIP"}} = (0x2e0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_RSTRT_MEM"}} = (0x2e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR82"}} = (0x2f0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"POWER_CTL"}} = (0x2f8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SMM_TRANSFER_PTR"}} = (0x300 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_EXCEPTION_SS_DESC"}} = (0x308 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR18"}} = (0x310 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SP_CTRL0"}} = (0x318 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SP_CTRL1"}} = (0x320 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR14"}} = (0x328 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PROC_NAME_BANK_0"}} = (0x330 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PROC_NAME_BANK_1"}} = (0x338 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PROC_NAME_BANK_2"}} = (0x340 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PROC_NAME_BANK_3"}} = (0x348 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PROC_NAME_BANK_4"}} = (0x350 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PROC_NAME_BANK_5"}} = (0x358 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SP_CTRL2"}} = (0x360 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FCR35"}} = (0x368 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TURBO_MODE_CONFIG_1"}} = (0x370 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR_EVENT_CAUSE"}} = (0x378 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LAST_PAUSE_TIME"}} = (0x380 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FIRST_PAUSE_TIME"}} = (0x388 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"RESTART_IP_SAVE"}} = (0x390 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PWR_CTRL_HI"}} = (0x398 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"DYNAMIC_PWR_CTRL"}} = (0x3a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IDT_EFLAGS_TO_SAVE_SHADOW"}} = (0x3a8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MSR_IA32_TSC_ADJUST"}} = (0x3b0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PRNG_CNTRL"}} = (0x3b8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PRNG_DATA0"}} = (0x3c0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PRNG_DATA1"}} = (0x3c8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PRNG_SEED"}} = (0x3d0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PRNG_SEED_DETERMINED"}} = (0x3d8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PRNG_KEY1"}} = (0x3e0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PRNG_KEY2"}} = (0x3e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SAVED_UEXCEPT"}} = (0x3f0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PATCH_OVERLAY_START"}} = (0x3f8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MSR_CORE_SCRATCH_BIOS"}} = (0x400 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MSR_CORE_SCRATCH_0"}} = (0x408 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"OLD_XCR"}} = (0x410 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"DR7_SAVE"}} = (0x418 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MSR_IO_BASE_P"}} = (0x41c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MSR_IO_CAPT_P"}} = (0x420 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FSR1"}} = (0x424 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IA32_FMASK"}} = (0x428 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IA32_SMM_MONITOR_CTL"}} = (0x42c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_JCR_SAVE"}} = (0x430 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_EFLAGS_SAVE"}} = (0x434 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_INTERRUPTION_INFO"}} = (0x438 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_RSTRT_STATE"}} = (0x43c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SMM_XMR"}} = (0x440 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CST_CONTROL"}} = (0x444 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR8"}} = (0x448 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CURRENT_VMCS_DESC_EXT"}} = (0x44c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TURBO_MODE_HCR3_SAVE"}} = (0x450 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SMI_CNT"}} = (0x454 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"INTR_CNT"}} = (0x458 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"NMI_CNT"}} = (0x45c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"A20_CNT"}} = (0x460 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MC_CNT"}} = (0x464 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SKIP_MSRGP_CNT"}} = (0x468 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TRACER_DEADLOCK_RESTART_CNT"}} = (0x46c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"WBINVD_DEADLOCK_RESTART_CNT"}} = (0x470 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MWAIT_DEADLOCK_BLOWOFF_CNT"}} = (0x474 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PATCH_DEADLOCK_BLOWOFF_CNT"}} = (0x478 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LAST_SYNC_CODE"}} = (0x47c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR9"}} = (0x480 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"AUX_TSC"}} = (0x484 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"EFER_ALLOWED_MASK"}} = (0x488 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PWR_ACTION"}} = (0x48c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LAST_INTR_IPR"}} = (0x490 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MWAIT_EF_SAVE"}} = (0x494 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"HCR2_PRAM"}} = (0x498 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"HCR7_PRAM"}} = (0x49c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LAST_SLEEP_CODE"}} = (0x4a0 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PERF_STATUS_UP"}} = (0x4a4 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IA32_FEATURE_CONTROL"}} = (0x4a8 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IA32_MONITOR_FILTER_SIZE"}} = (0x4aa , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SMI_CR4_SAVE"}} = (0x4ac , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SMI_MTF_SAVE"}} = (0x4ae , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PERF_CTRL0"}} = (0x4b0 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PERF_CTRL1"}} = (0x4b2 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PERF_CTRL2"}} = (0x4b4 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"ROM_VERSION_INSTALLED"}} = (0x4b6 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"REAL_PSRUP_MAX"}} = (0x4b8 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"AES_VALID"}} = (0x4ba , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PRAM_OVERLAY_BASE"}} = (0x4bc , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"XCR0"}} = (0x4be , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MCG_STATUS"}} = (0x4bf , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VMX_CPL_SAVE"}} = (0x4c0 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MAX_RATIO"}} = (0x4c1 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PADDR_SIZE"}} = (0x4c2 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FSB_FREQ"}} = (0x4c3 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FUSE_ECC_RESULT"}} = (0x4c4 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR1_SUB_FIELD"}} = (0x4c5 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"NAP_VID_OFFSET"}} = (0x4c6 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"COMPOSITE_CST"}} = (0x4c7 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"ORIG_VRM_RCVRY_DEL"}} = (0x4c8 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TR_SWINT_VECTOR"}} = (0x4c9 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"UC_WAKEUP_DELAY"}} = (0x4ca , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VDD_DEAD_FLG"}} = (0x4cb , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PHYS_CORE_ID"}} = (0x4cc , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VIRT_CORE_ID"}} = (0x4cd , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"VIRT_NUM_CORES"}} = (0x4ce , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GLOBAL_CONTEXT"}} = (0x4cf , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IA32_ENERGY_PERF_BIAS"}} = (0x4d0 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"NUM_IO_TRANSLATE_DESC"}} = (0x4d1 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PATCH_OVERLAY_INSTALLED"}} = (0x4d2 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PATCH_STATE"}} = (0x4d3 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"FUSE_CTRLS"}} = (0x4d4 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"REPAIR_REBLOW_CTR"}} = (0x4d5 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSBASE0"}} = (0x4d8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSMASK0"}} = (0x4e0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSBASE1"}} = (0x4e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSMASK1"}} = (0x4f0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSBASE2"}} = (0x4f8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSMASK2"}} = (0x500 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSBASE3"}} = (0x508 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSMASK3"}} = (0x510 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSBASE4"}} = (0x518 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSMASK4"}} = (0x520 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSBASE5"}} = (0x528 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSMASK5"}} = (0x530 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSBASE6"}} = (0x538 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSMASK6"}} = (0x540 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSBASE7"}} = (0x548 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_PHYSMASK7"}} = (0x550 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX64K_00000"}} = (0x558 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX16K_80000"}} = (0x560 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX16K_A0000"}} = (0x568 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX4K_C0000"}} = (0x570 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX4K_C8000"}} = (0x578 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX4K_D0000"}} = (0x580 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX4K_D8000"}} = (0x588 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX4K_E0000"}} = (0x590 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX4K_E8000"}} = (0x598 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX4K_F0000"}} = (0x5a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_FIX4K_F8000"}} = (0x5a8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_DEF_TYPE"}} = (0x5b0 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SMRR_BASE"}} = (0x5b8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SMRR_MASK"}} = (0x5c0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"MTRR_DEF_TYPE_SHADOW"}} = (0x5c8 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PDPT0"}} = (0x5d0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PDPT1"}} = (0x5d8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PDPT2"}} = (0x5e0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PDPT3"}} = (0x5e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"DR0"}} = (0x5f0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"DR1"}} = (0x5f8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"DR2"}} = (0x600 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"DR3"}} = (0x608 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"PAT"}} = (0x610 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"HARDWARE_EPTP"}} = (0x618 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"ACFLAGS"}} = (0x620 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GETSEC_PARAM_1_MASK"}} = (0x628 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GETSEC_PARAM_1_VERSION"}} = (0x62c , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GETSEC_PARAM_2_SIZE"}} = (0x630 , 4 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GETSEC_PARAM_3"}} = (0x634 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GETSEC_PARAM_4"}} = (0x635 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"GETSEC_PARAM_5"}} = (0x636 , 1 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SPI_PREFIX_OPCODE_MENU"}} = (0x638 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SPI_OPCODE_TYPE"}} = (0x63a , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SPI_BASE"}} = (0x63c , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"SPI_OPCODE_MENU"}} = (0x640 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CORE_C2_RESIDENCY"}} = (0x648 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CORE_C3_RESIDENCY"}} = (0x650 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CORE_C4_RESIDENCY"}} = (0x658 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CORE_C5_RESIDENCY"}} = (0x660 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"CORE_C6_RESIDENCY"}} = (0x668 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"TEMP_DEBUG_SAVE0"}} = (0x670 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_TRANSLATE_DESC0"}} = (0x678 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_TRANSLATE_DESC1"}} = (0x680 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_TRANSLATE_DESC2"}} = (0x688 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_TRANSLATE_DESC3"}} = (0x690 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_TRANSLATE_DESC4"}} = (0x698 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_TRANSLATE_DESC5"}} = (0x6a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_TRANSLATE_DESC6"}} = (0x6a8 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"IO_TRANSLATE_DESC7"}} = (0x6b0 , 8 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LA_DESC2"}} = (0x6b8 , 2 ); 
@{$DEFAULT_CHECKPOINT_PRAM{"LA_DESC3"}} = (0x6ba , 2 ); 
}
1;
package Tracer;
sub InitializecnrUCPram  {
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CAM_0_SAVE"}} = (0x0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"BTAC_0_REPAIR"}} = (0x200 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"BTAC_1_REPAIR"}} = (0x208 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"BTAC_2_REPAIR"}} = (0x210 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"BTAC_3_REPAIR"}} = (0x218 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"L1I_0_REPAIR"}} = (0x220 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"L1I_1_REPAIR"}} = (0x260 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"L1I_2_REPAIR"}} = (0x2a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"L1I_3_REPAIR"}} = (0x2e0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"L1D_0_REPAIR"}} = (0x320 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"L1D_1_REPAIR"}} = (0x360 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"L1D_2_REPAIR"}} = (0x3a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"L1D_3_REPAIR"}} = (0x3e0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"REPAIR_NZ_FLAGS"}} = (0x420 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"RESCTR_RATIO"}} = (0x428 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PKG_C2_RESIDENCY"}} = (0x430 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PKG_C3_RESIDENCY"}} = (0x438 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PKG_C4_RESIDENCY"}} = (0x440 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PKG_C5_RESIDENCY"}} = (0x448 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PKG_C6_RESIDENCY"}} = (0x450 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PKG_C0_RESIDENCY_START"}} = (0x458 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CPUID_THREAD_COUNT"}} = (0x460 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CPUID_CORE_SHIFT"}} = (0x461 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CPUID_CORE_COUNT"}} = (0x462 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CPUID_PACKAGE_SHIFT"}} = (0x463 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CPUID_MAX_THREAD_APIC_ID_L1D"}} = (0x464 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CPUID_MAX_THREAD_APIC_ID_L1I"}} = (0x465 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CPUID_MAX_THREAD_APIC_ID_L2"}} = (0x466 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CPUID_MAX_PACKAGE_APIC_ID"}} = (0x467 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"MSR_UNCORE_SCRATCH_BIOS"}} = (0x468 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"MSR_UNCORE_SCRATCH_0"}} = (0x470 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"MSR_SW_SIGNATURE"}} = (0x478 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PGCR2_SHADOW"}} = (0x480 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCCR_SHADOW"}} = (0x484 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"ICCR_SHADOW"}} = (0x488 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"UC_PWR_ACTION"}} = (0x48c , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"UC_PATCH_LUMP_SIZE"}} = (0x490 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"UC_PATCH_FMS"}} = (0x492 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"UC_CAM_ENTRIES"}} = (0x498 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"UC_PATCH_START"}} = (0x4a0 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"UC_PATCHX_ID"}} = (0x4a2 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"UC_PATCH_LOCK"}} = (0x4a4 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"C5_456_REG"}} = (0x4a6 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PATCH_STATUS_RSA"}} = (0x4a7 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_MISC_ARCH_FLAGS"}} = (0x4a8 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_SUSPEND_RESTART_ADDR"}} = (0x4aa , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_INTERFACE_STATE"}} = (0x4ac , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_ACTIVE_LOCALITY"}} = (0x4ad , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_ACCESS_0"}} = (0x4b0 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_ACCESS_1"}} = (0x4b1 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_ACCESS_2"}} = (0x4b2 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_ACCESS_3"}} = (0x4b3 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_ACCESS_4"}} = (0x4b4 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_ESTABLISHMENT_B"}} = (0x4b5 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NUM_PENDING"}} = (0x4b6 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_STS"}} = (0x4b8 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_STS_STATE"}} = (0x4b9 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_STS_CNT"}} = (0x4ba , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPMS_TIME_START"}} = (0x4c0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"LVL0_RETURN_SAVE"}} = (0x4c8 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"LVL1_RETURN_SAVE"}} = (0x4ca , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"LVL2_RETURN_SAVE"}} = (0x4cc , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"LVL3_RETURN_SAVE"}} = (0x4ce , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"LVL4_RETURN_SAVE"}} = (0x4d0 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"LVL5_RETURN_SAVE"}} = (0x4d2 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"LVL6_RETURN_SAVE"}} = (0x4d4 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"LVL7_RETURN_SAVE"}} = (0x4d6 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_PERMANENT_FLAGS"}} = (0x4d8 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CLEAR_FLAGS"}} = (0x4dc , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_STANY_FLAGS"}} = (0x4dd , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_INT_VECTOR"}} = (0x4de , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_INT_STATUS"}} = (0x4df , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CMD_PTR"}} = (0x4e0 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_RSP_PTR"}} = (0x4e2 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_RSP_SIZE"}} = (0x4e4 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_BFR_SIZE"}} = (0x4e6 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_FIFO_0"}} = (0x4e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_FIFO_1"}} = (0x4f0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_FIFO_ETC"}} = (0x4f8 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CMD_TAG"}} = (0x936 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CMD_LENG"}} = (0x938 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CMD_ORDINAL"}} = (0x93c , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_PARAMETER_STACK"}} = (0x940 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_0"}} = (0x970 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_1"}} = (0x988 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_2"}} = (0x9a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_3"}} = (0x9b8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_4"}} = (0x9d0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_5"}} = (0x9e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_6"}} = (0xa00 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_7"}} = (0xa18 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_8"}} = (0xa30 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_9"}} = (0xa48 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_10"}} = (0xa60 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_11"}} = (0xa78 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_12"}} = (0xa90 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_13"}} = (0xaa8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_14"}} = (0xac0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_15"}} = (0xad8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_16"}} = (0xaf0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_17"}} = (0xb08 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_18"}} = (0xb20 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_19"}} = (0xb38 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_20"}} = (0xb50 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_21"}} = (0xb68 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_22"}} = (0xb80 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"PCR_23"}} = (0xb98 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CMOS_SIGNATURE"}} = (0xbb0 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CMOS_SEQUENCE_NUM"}} = (0xbb4 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"CMOS_FLASH_CHECKSUM"}} = (0xbb8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NV_CLOCK_CMOS"}} = (0xbc8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NV_TOTAL_RESET_CNT_CMOS"}} = (0xbd0 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NV_RESET_CNT_CMOS"}} = (0xbd4 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CURRENT_FLASH_BFR_ADDR"}} = (0xbd8 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NEXT_FLASH_BFR_ADDR"}} = (0xbdc , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NV_MISC_ARCH_FLAGS"}} = (0xbe0 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"NV_SIGNATURE"}} = (0xbe8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"NV_FAILED_TRIES"}} = (0xbf0 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"NV_MAX_TRIES"}} = (0xbf4 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"NV_RECOVERY_TIME"}} = (0xbf8 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"NV_LOCKOUT_RECOVERY"}} = (0xbfc , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"NV_LOCKOUT_AUTH_ANABLED"}} = (0xc00 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NV_PCR_AUTHVALUE"}} = (0xc04 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_DELEGATE_KEY_ID"}} = (0xc26 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CONTEXT_KEY_ID"}} = (0xc28 , 2 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CTR_VALUE_0"}} = (0xc2c , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CTR_VALUE_1"}} = (0xc30 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CTR_VALUE_2"}} = (0xc34 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CTR_VALUE_3"}} = (0xc38 , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_CTR_AUDIT"}} = (0xc3c , 4 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NONCE_EKRESET"}} = (0xc40 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NONCE_DAA_PROOF"}} = (0xc58 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_NONCE_DAA_SEED"}} = (0xc70 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_SECRET_TPMPROOF"}} = (0xc88 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_SECRET_OWNERAUTH"}} = (0xca0 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_SECRET_OPERAUTH"}} = (0xcb8 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_AUTHDIR"}} = (0xcd0 , 1 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_SRK_PRIVATE"}} = (0xce8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_SRK_PRIVATE_EXP"}} = (0xd68 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_SRK_PUBLIC"}} = (0xde8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_EK_PRIVATE"}} = (0xe68 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_EK_PRIVATE_EXP"}} = (0xee8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_EK_PUBLIC"}} = (0xf68 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_PRAM{"TPM_UCPRAM_END"}} = (0xfe8 , 8 ); 
}
1;
package Tracer;
sub InitializecnrCore  {
@{$DEFAULT_CHECKPOINT_CORE{"UCODE_FLGS"}} = (0x0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"G10"}} = (0x8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"G15"}} = (0x10 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"GSTATE"}} = (0x18 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"LSTATE"}} = (0x20 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"TSTATE"}} = (0x28 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"UEXCEPT_STATE"}} = (0x30 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"SHADOW_RSP"}} = (0x38 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"EAX"}} = (0x40 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ECX"}} = (0x48 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"EDX"}} = (0x50 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"EBX"}} = (0x58 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ESP"}} = (0x60 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"EBP"}} = (0x68 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ESI"}} = (0x70 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"EDI"}} = (0x78 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"R8"}} = (0x80 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"R9"}} = (0x88 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"R10"}} = (0x90 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"R11"}} = (0x98 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"R12"}} = (0xa0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"R13"}} = (0xa8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"R14"}} = (0xb0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"R15"}} = (0xb8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ESDESC"}} = (0xc0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"CSDESC"}} = (0xc8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"SSDESC"}} = (0xd0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"DSDESC"}} = (0xd8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FSDESC"}} = (0xe0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"GSDESC"}} = (0xe8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"TSSDESC"}} = (0xf0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"GDTDESC"}} = (0xf8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"IDTDESC"}} = (0x100 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"LDTDESC"}} = (0x108 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"VMCSDESC"}} = (0x110 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FSDESC_EXT"}} = (0x118 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"GSDESC_EXT"}} = (0x11c , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"TSSDESC_EXT"}} = (0x120 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"GDTDESC_EXT"}} = (0x124 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"LDTDESC_EXT"}} = (0x128 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"VMCSDESC_EXT"}} = (0x12c , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"IDTDESC_EXT"}} = (0x130 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FP_SW"}} = (0x138 , 2 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FP_CW"}} = (0x13a , 2 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FPTAG"}} = (0x13c , 2 ); 
@{$DEFAULT_CHECKPOINT_CORE{"MXCSR"}} = (0x13e , 2 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FPDS"}} = (0x140 , 2 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FPCS"}} = (0x142 , 2 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FPLOP"}} = (0x144 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FPLA"}} = (0x148 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FPLIP"}} = (0x150 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM0"}} = (0x158 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM1"}} = (0x168 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM2"}} = (0x178 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM3"}} = (0x188 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM4"}} = (0x198 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM5"}} = (0x1a8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM6"}} = (0x1b8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM7"}} = (0x1c8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM8"}} = (0x1d8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM9"}} = (0x1e8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM10"}} = (0x1f8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM11"}} = (0x208 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM12"}} = (0x218 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM13"}} = (0x228 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM14"}} = (0x238 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"XMM15"}} = (0x248 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ST0"}} = (0x258 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ST1"}} = (0x268 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ST2"}} = (0x278 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ST3"}} = (0x288 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ST4"}} = (0x298 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ST5"}} = (0x2a8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ST6"}} = (0x2b8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ST7"}} = (0x2c8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM0"}} = (0x2d8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM1"}} = (0x2e8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM2"}} = (0x2f8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM3"}} = (0x308 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM4"}} = (0x318 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM5"}} = (0x328 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM6"}} = (0x338 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM7"}} = (0x348 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM8"}} = (0x358 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM9"}} = (0x368 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM10"}} = (0x378 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM11"}} = (0x388 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM12"}} = (0x398 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM13"}} = (0x3a8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM14"}} = (0x3b8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"YMM15"}} = (0x3c8 , 16 ); 
@{$DEFAULT_CHECKPOINT_CORE{"C0_MOB_CTRL"}} = (0x3d8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FCR56"}} = (0x3e0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"APICBASE"}} = (0x3e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FCR55"}} = (0x3f0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"TCR"}} = (0x3f8 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"JCR"}} = (0x3fc , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"CR0"}} = (0x400 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FCR16"}} = (0x404 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"EFER"}} = (0x408 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"CRC32_POLY"}} = (0x40c , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"MISC_ENABLE"}} = (0x410 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FCR14"}} = (0x418 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FCR3"}} = (0x420 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FCR15"}} = (0x428 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"CR4"}} = (0x430 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"SYSENTER_EIP_64"}} = (0x438 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FCR57"}} = (0x440 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"IP"}} = (0x448 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"TERRY_CONTROL"}} = (0x450 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"TIMEOUT_CTR"}} = (0x458 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"ICR"}} = (0x460 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"IMR"}} = (0x464 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"DR6"}} = (0x468 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"DUMMY"}} = (0x46c , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CNT_0_H"}} = (0x470 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CNT_1_H"}} = (0x478 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CNT_2_H"}} = (0x480 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"DISPATCH_CTR_H"}} = (0x488 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"DUMMY_1"}} = (0x490 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CNT_5_H"}} = (0x498 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CNT_6_H"}} = (0x4a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CNT_7_H"}} = (0x4a8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CCCR_0_H"}} = (0x4b0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CCCR_1_H"}} = (0x4b8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CCCR_2_H"}} = (0x4c0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"DUMMY_2"}} = (0x4c8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"DUMMY_3"}} = (0x4d0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CCCR_5_H"}} = (0x4d8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CCCR_6_H"}} = (0x4e0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"PERF_CCCR_7_H"}} = (0x4e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"APERF_CTR_H"}} = (0x4f0 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"MPERF_CTR_H"}} = (0x4f8 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"FIXED_CTRL_H"}} = (0x500 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"GLOBAL_STATUS_H"}} = (0x508 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"GLOBAL_CTRL_H"}} = (0x510 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"GLOBAL_OVF_CTRL_H"}} = (0x518 , 8 ); 
@{$DEFAULT_CHECKPOINT_CORE{"EFLAGS"}} = (0x520 , 4 ); 
@{$DEFAULT_CHECKPOINT_CORE{"DUMMY_4"}} = (0x524 , 4 ); 
}
1;
package Tracer;
sub InitializecnrUCCoreRegs  {
@{$DEFAULT_CHECKPOINT_UC_CORE_REGS{"BMR"}} = (0x0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_CORE_REGS{"PERF_CTL_MSR"}} = (0x8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_CORE_REGS{"HCR"}} = (0x10 , 8 ); 
}
1;
package Tracer;
sub InitializecnrUCRegs  {
@{$DEFAULT_CHECKPOINT_UC_REGS{"HCR8"}} = (0x0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"BMR"}} = (0x18 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"HCR4"}} = (0x30 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"HCR5"}} = (0x38 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"HCR6"}} = (0x40 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"RING_OSCILLATOR_MSR"}} = (0x48 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PERF_CTL_MSR"}} = (0x58 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"HCR3"}} = (0x60 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"NCR"}} = (0x68 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"BSR"}} = (0x70 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"HARD_POWERON"}} = (0x88 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"BUS_IDLE_MSR"}} = (0xa0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"CLOCK_MODULATION_MSR"}} = (0xa8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PERF_STATUS_MSR"}} = (0xb8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PERF_STATUS_UP_MSR"}} = (0xc0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"THERM2_CTL_MSR"}} = (0xc8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"HCR"}} = (0xd8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"MSR_FSB_FREQ"}} = (0xe8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"VRMCOUNT"}} = (0xf8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PLLCOUNT"}} = (0x100 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PTA"}} = (0x128 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PTB"}} = (0x130 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PTC"}} = (0x138 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PTD"}} = (0x140 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PTE"}} = (0x148 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"XCORE_CTRL"}} = (0x150 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PIDCNTL"}} = (0x1a8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"FORCEORDERCNTL"}} = (0x1b8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"SPECSTATUS"}} = (0x1d8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"BUG_FIXES"}} = (0x1f8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PCCR"}} = (0x200 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"ICCR"}} = (0x208 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PGCR"}} = (0x210 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"CGCR"}} = (0x218 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"UC_MISC_ENABLE"}} = (0x220 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"PGCR2"}} = (0x228 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"TECR"}} = (0x298 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"MDCR"}} = (0x2a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"UC_CTR_BUSCLKS_H"}} = (0x2c0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"UC_CTR_CORECLKS_H"}} = (0x2c8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"UC_PERF_CTR0_H"}} = (0x2d0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"UC_PERF_CTR1_H"}} = (0x2d8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_STATUS_REG_IDX_H"}} = (0x2e8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CONFIG_REG_IDX_H"}} = (0x2f0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_SIZE_REG_IDX_H"}} = (0x2f8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL00_REG_IDX_H"}} = (0x320 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL01_REG_IDX_H"}} = (0x328 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL02_REG_IDX_H"}} = (0x330 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL03_REG_IDX_H"}} = (0x338 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL04_REG_IDX_H"}} = (0x340 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL05_REG_IDX_H"}} = (0x348 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL06_REG_IDX_H"}} = (0x350 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL07_REG_IDX_H"}} = (0x358 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL08_REG_IDX_H"}} = (0x360 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL09_REG_IDX_H"}} = (0x368 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL10_REG_IDX_H"}} = (0x370 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL11_REG_IDX_H"}} = (0x378 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL12_REG_IDX_H"}} = (0x380 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL13_REG_IDX_H"}} = (0x388 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL14_REG_IDX_H"}} = (0x390 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL15_REG_IDX_H"}} = (0x398 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL16_REG_IDX_H"}} = (0x3a0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_CTRL17_REG_IDX_H"}} = (0x3a8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_SNOOP_ADDR_REG_IDX_H"}} = (0x3b0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_ERROR_REG_UC_IDX_H"}} = (0x3b8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_ERROR_REG_C0_IDX_H"}} = (0x3c0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_ERROR_REG_C1_IDX_H"}} = (0x3c8 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_ERROR_REG_C2_IDX_H"}} = (0x3d0 , 8 ); 
@{$DEFAULT_CHECKPOINT_UC_REGS{"L2_ERROR_REG_C3_IDX_H"}} = (0x3d8 , 8 ); 
}
1;
package Tracer;
sub InitializecnrDumps {
 InitializecnrPram();
 InitializecnrUCPram();
 InitializecnrCore();
 InitializecnrUCCoreRegs();
 InitializecnrUCRegs();
}