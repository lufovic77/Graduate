#!/bin/sh

sudo ./rundb_TC_TPCC_NOWAIT > ./repeatable_result/TC_NOWAIT_RAMDISK.txt
sudo rm /mnt/dbx1000/logs/*
sudo ./rundb_TC_TPCC_SILO > ./repeatable_result/TC_SILO_RAMDISK.txt
sudo rm /mnt/dbx1000/logs/*
