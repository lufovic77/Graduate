#!/bin/sh

sudo rm /mnt/pmem0/logs/*
sudo ./rundb_TC_TPCC_NOWAIT > ./repeatable_result/TC_NOWAIT_DCPMM.txt
sudo rm /mnt/pmem0/logs/*
sudo ./rundb_TC_TPCC_SILO > ./repeatable_result/TC_SILO_DCPMM.txt
sudo rm /mnt/pmem0/logs/*



