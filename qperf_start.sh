#!/usr/bin/ksh

# This wrapper script can be used to schedule qperf via crontab
# The script is assumed to be installed in current user's home directory in qperf folder
# interval and iterations can be changed as required
# number of iterations should not exceed wind
#
# Author: Kiran Ghag, qperf@kiranghag.com
# Version: v0.1 20180720

qperf_dir="/root/qperf"
interval=1
iterations=2

cd $qperf_dir
./collect $interval $iterations >> qperf_start.log 2>&1


