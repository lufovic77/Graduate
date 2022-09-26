#!/bin/sh

rm /home/guest/dbx1000/logs/*
./rundb_TC_TPCC_NOWAIT > ./repeatable_result/TC_NOWAIT_SSD.txt
rm /home/guest/dbx1000/logs/*
./rundb_TC_TPCC_SILO > ./repeatable_result/TC_SILO_SSD.txt
rm /home/guest/dbx1000/logs/*
