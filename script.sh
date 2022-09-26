#!/bin/sh

vmstat 1 -w | stdbuf -o0 cut -c84- > ./finalResult_important/CPU_NOWAIT_RAM.txt &
sudo ./rundb_TD_TPCC_NOWAIT
kill -9 $(ps -ef | grep vmstat | grep -v grep | awk '{print $2}')


vmstat 1 -w | stdbuf -o0 cut -c84- > ./finalResult_important/CPU_SILO_RAM.txt &
sudo ./rundb_TD_TPCC_SILO
kill -9 $(ps -ef | grep vmstat | grep -v grep | awk '{print $2}')

