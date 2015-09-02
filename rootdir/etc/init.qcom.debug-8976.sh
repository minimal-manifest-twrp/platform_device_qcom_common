#!/system/bin/sh
#Copyright (c) 2015, The Linux Foundation. All rights reserved.
#
#Redistribution and use in source and binary forms, with or without
#modification, are permitted provided that the following conditions are
#met:
#    * Redistributions of source code must retain the above copyright
#      notice, this list of conditions and the following disclaimer.
#    * Redistributions in binary form must reproduce the above
#      copyright notice, this list of conditions and the following
#      disclaimer in the documentation and/or other materials provided
#      with the distribution.
#    * Neither the name of The Linux Foundation nor the names of its
#      contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
#THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
#WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
#MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
#ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
#BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
#BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
#OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
#IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Debug configuration for 8976
# Function MSM8976 DCC configuration
enable_msm8976_dcc_config()
{
    DCC_PATH="/sys/bus/platform/devices/b3000.dcc"
    if [ ! -d $DCC_PATH ]; then
        echo "DCC don't exist on this build."
        return
    fi

    echo  0 > $DCC_PATH/enable
    echo cap > $DCC_PATH/func_type
    echo sram > $DCC_PATH/data_sink
    echo  1 > $DCC_PATH/config_reset

    #BIMC_S_DDR0
    echo 0x00448500 41 > $DCC_PATH/config
    echo 0x0044D070 2 > $DCC_PATH/config
    #BIMC_S_DDR1
    echo 0x00450500 41 > $DCC_PATH/config
    echo 0x00455070 2 > $DCC_PATH/config
    #BMIC_M_XXX_MPORT
    echo 0x00408400 30 > $DCC_PATH/config
    echo 0x0040C400 30 > $DCC_PATH/config
    echo 0x00410400 30 > $DCC_PATH/config
    echo 0x00414400 30 > $DCC_PATH/config
    echo 0x00418400 30 > $DCC_PATH/config
    #APCS_ALIAS_APSS_GLB
    echo 0x0B011014 2  > $DCC_PATH/config
    echo 0x0B011210 1  > $DCC_PATH/config
    echo 0x0B011218 1  > $DCC_PATH/config
    #APCLUS1_L2_SAW2
    echo 0x0B01200C 1  > $DCC_PATH/config
    echo 0x0B012030 1  > $DCC_PATH/config
    #APCS_ALIAS4_APSS_ACS
    echo 0x0B088004 2  > $DCC_PATH/config
    echo 0x0B088064 1  > $DCC_PATH/config
    echo 0x0B088090 1  > $DCC_PATH/config
    #APCS_ALIAS4_SAW2
    echo 0x0B08900C 1  > $DCC_PATH/config
    echo 0x0B089030 1  > $DCC_PATH/config
    #APCS_ALIAS5_APSS_ACS
    echo 0x0B098004 2  > $DCC_PATH/config
    echo 0x0B098064 1  > $DCC_PATH/config
    echo 0x0B098090 1  > $DCC_PATH/config
    #APCS_ALIAS5_SAW2
    echo 0x0B09900C 1  > $DCC_PATH/config
    echo 0x0B099030 1  > $DCC_PATH/config
    #APCS_ALIAS6_APSS_ACS
    echo 0x0B0A8004 2  > $DCC_PATH/config
    echo 0x0B0A8064 1  > $DCC_PATH/config
    echo 0x0B0A8090 1  > $DCC_PATH/config
    #APCS_ALIAS6_SAW2
    echo 0x0B0A900C 1  > $DCC_PATH/config
    echo 0x0B0A9030 1  > $DCC_PATH/config
    #APCS_ALIAS7_APSS_ACS
    echo 0x0B0B8004 2  > $DCC_PATH/config
    echo 0x0B0B8064 1  > $DCC_PATH/config
    echo 0x0B0B8090 1  > $DCC_PATH/config
    #APCS_ALIAS7_SAW2
    echo 0x0B0B900C 1  > $DCC_PATH/config
    echo 0x0B0B9030 1  > $DCC_PATH/config
    #APCS_ALIAS0_APSS_GLB
    echo 0x0B111014 2  > $DCC_PATH/config
    echo 0x0B111210 1  > $DCC_PATH/config
    echo 0x0B111218 1  > $DCC_PATH/config
    #APCLUS0_L2_SAW2
    echo 0x0B11200C 1  > $DCC_PATH/config
    echo 0x0B112030 1  > $DCC_PATH/config
    #APCS_ALIAS0_APSS_ACS
    echo 0x0B188004 2  > $DCC_PATH/config
    echo 0x0B188064 1  > $DCC_PATH/config
    #APCS_ALIAS0_SAW2
    echo 0x0B18900C 1  > $DCC_PATH/config
    echo 0x0B189030 1  > $DCC_PATH/config
    #APCS_ALIAS1_APSS_ACS
    echo 0x0B198004 2  > $DCC_PATH/config
    echo 0x0B198064 1  > $DCC_PATH/config
    #APCS_ALIAS1_SAW2
    echo 0x0B19900C 1  > $DCC_PATH/config
    echo 0x0B199030 1  > $DCC_PATH/config
    #APCS_ALIAS2_APSS_ACS
    echo 0x0B1A8004 2  > $DCC_PATH/config
    echo 0x0B1A8064 1  > $DCC_PATH/config
    #APCS_ALIAS2_SAW2
    echo 0x0B1A900C 1  > $DCC_PATH/config
    echo 0x0B1A9030 1  > $DCC_PATH/config
    #APCS_ALIAS3_APSS_ACS
    echo 0x0B1B8004 2  > $DCC_PATH/config
    echo 0x0B1B8064 1  > $DCC_PATH/config
    #APCS_ALIAS3_SAW2
    echo 0x0B1B900C 1  > $DCC_PATH/config
    echo 0x0B1B9030 1  > $DCC_PATH/config
    #APCS_COMMON_APSS_SHARED
    echo 0x0B1D1058 2  > $DCC_PATH/config
    echo 0x0B1D200C 1  > $DCC_PATH/config
    echo 0x0B1D2030 1  > $DCC_PATH/config

    echo 0x06BA2C14 1  > $DCC_PATH/config
    i=1
    while [ $i -le 9 ];do
        echo 0x06BA0038 1 > $DCC_PATH/config
        i=$(($i+1))
    done

    i=1
    while [ $i -le 100 ]; do
        echo 0x06BA0040 2 > $DCC_PATH/config
        i=$(($i+1))
    done

    echo  1 > $DCC_PATH/enable
}

#Enable STM events for 8976
enable_stm_events_8976()
{
    # bail out if its perf config
    if [ ! -d /sys/module/msm_rtb ]
    then
        return
    fi
    # bail out if coresight isn't present
    if [ ! -d /sys/bus/coresight ]
    then
        return
    fi
    # bail out if ftrace events aren't present
    if [ ! -d /sys/kernel/debug/tracing/events ]
    then
        return
    fi

    echo 1 > /sys/bus/coresight/devices/coresight-stm/enable
    echo 1 > /sys/kernel/debug/tracing/tracing_on
    echo 0 > /sys/kernel/debug/tracing/events/enable
    echo 1 > /sys/bus/coresight/devices/coresight-tmc-etf/curr_sink
    echo mem > /sys/bus/coresight/devices/coresight-tmc-etr/out_mode
    echo 1 > /sys/bus/coresight/devices/coresight-tmc-etr/curr_sink
    #IRQs
    echo 1 > /sys/kernel/debug/tracing/events/irq/irq_handler_entry/enable
    echo 1 > /sys/kernel/debug/tracing/events/irq/irq_handler_exit/enable
    #Scheduler
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_cpu_hotplug/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_migrate_task/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_enq_deq_task/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_wakeup/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_wakeup_new/enable
    # sound
    echo 1 > /sys/kernel/debug/tracing/events/asoc/snd_soc_reg_read/enable
    echo 1 > /sys/kernel/debug/tracing/events/asoc/snd_soc_reg_write/enable
    # mdp
    echo 1 > /sys/kernel/debug/tracing/events/mdss/mdp_video_underrun_done/enable
    # video
    echo 1 > /sys/kernel/debug/tracing/events/msm_vidc/enable
    #Timer
    echo 1 > /sys/kernel/debug/tracing/events/timer/timer_expire_entry/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/timer_expire_exit/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/hrtimer_expire_entry/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/hrtimer_expire_exit/enable
    #Clock
    echo 1 > /sys/kernel/debug/tracing/events/power/clock_disable/enable
    echo 1 > /sys/kernel/debug/tracing/events/power/clock_enable/enable
    echo 1 > /sys/kernel/debug/tracing/events/power/clock_set_rate/enable
    echo 1 > /sys/kernel/debug/tracing/events/power/clock_state/enable
    echo 1 > /sys/kernel/debug/tracing/events/power/cpu_frequency_switch_end/enable
    echo 1 > /sys/kernel/debug/tracing/events/power/cpu_frequency_switch_start/enable
    # Regulator
    echo 1 > /sys/kernel/debug/tracing/events/regulator/regulator_disable/enable
    echo 1 > /sys/kernel/debug/tracing/events/regulator/regulator_disable_complete/enable
    echo 1 > /sys/kernel/debug/tracing/events/regulator/regulator_enable/enable
    echo 1 > /sys/kernel/debug/tracing/events/regulator/regulator_enable_complete/enable
    echo 1 > /sys/kernel/debug/tracing/events/regulator/regulator_set_voltage/enable
    echo 1 > /sys/kernel/debug/tracing/events/regulator/regulator_set_voltage_complete/enable
    # power
    echo 1 > /sys/kernel/debug/tracing/events/msm_low_power/enable
    #RPM
    echo 1 > /sys/kernel/debug/tracing/events/rpm/rpm_resume/enable
    echo 1 > /sys/kernel/debug/tracing/events/rpm/rpm_suspend/enable
    #thermal
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_core_offline/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_post_core_offline/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_core_online/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_post_core_online/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_frequency_mit/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_post_frequency_mit/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/lmh_sensor_interrupt/enable
    #HW Events
    echo 0 > /sys/bus/coresight/devices/coresight-hwevent/enable
    echo 0 > /sys/bus/coresight/devices/coresight-stm/hwevent_enable
    echo 1 > /sys/bus/coresight/devices/coresight-hwevent/enable
    echo 1 > /sys/bus/coresight/devices/coresight-stm/hwevent_enable

    echo 0x0606cfb0 0xc5acce55 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c018 0xd14ff9ff > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c0a0 0x1420221 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x06001020 0x77777777 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c0a4 0x2241002 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x06001024 0x66666d76 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606cfb0 0xc5acce55 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c01c 0x20300200 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c0b4 0x30 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606cfb0 0xc5acce55 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c034 0x2000400 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c114 0x0 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c0a8 0x2003303 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x06001028 0x6776666 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c0b8 0x220000 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606cfb0 0xc5acce55 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c000 0x800000 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c048 0x10000000 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c0ac 0x33000003 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0600102c 0x667622d6 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c11c 0x20 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606cfb0 0xc5acce55 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c008 0xc000000 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c06c 0x2200 > /sys/bus/coresight/devices/coresight-hwevent/setreg
    echo 0x0606c0bc 0x0 > /sys/bus/coresight/devices/coresight-hwevent/setreg
}

dump_debugui_regs()
{
echo 0 > /sys/bus/coresight/devices/coresight-dbgui/capture_enable
echo 0x2A > /sys/bus/coresight/devices/coresight-dbgui/nr_apb_regs
echo 0x20 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA2C14 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 0x21 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA0038 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 0x22 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA0038 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 0x23 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA0038 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 0x24 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA0038 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 0x25 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA0038 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 0x26 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA0038 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 0x27 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA0038 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 0x28 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA0038 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 0x29 > /sys/bus/coresight/devices/coresight-dbgui/addr_idx
echo 0x80BA0038 > /sys/bus/coresight/devices/coresight-dbgui/addr_val
echo 1 > /sys/bus/coresight/devices/coresight-dbgui/capture_enable
}


enable_msm8976_debug()
{
enable_msm8976_dcc_config
enable_stm_events_8976
dump_debugui_regs
}
