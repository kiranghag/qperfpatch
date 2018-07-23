#!/usr/bin/ksh

# This wrapper script can be used to schedule qperf via crontab
# The script is assumed to be installed in current user's home directory in qperf folder
# interval and iterations can be changed as required
# number of iterations should not exceed crontab duration between two executions 
# i.e. if cron executes two instances at 2 hour interval, iterations should be less than 120
#
# qperf is developed and maintained by Christian Karpp
# It can be downloaded from https://www-03.ibm.com/support/techdocs/atsmastr.nsf/WebIndex/TD105947 
# 
# Author: Kiran Ghag, qperf@kiranghag.com
# Version: v0.1 20180723

# update this if qperf is installed in a different directory
qperf_dir="/root/qperf"
# interval between two samples
interval=1
# number of iterations
iterations=2

cd $qperf_dir
./collect $interval $iterations >> qperf_start.log 2>&1


