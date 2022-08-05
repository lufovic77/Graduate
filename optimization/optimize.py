## parse output file to calculate throughput

import os.path
import re
import sys

def readFile():
    avg_time = 0
    basepath = os.path.dirname(__file__)
    filepath = os.path.abspath(os.path.join(basepath, "..", "output.txt"))
    output = open(filepath, "r")
    for line in output:
       ## print line
        if "Throughput" in line:
            ret = line.split(" ")
            ret = ret[len(ret)-1]
            print(ret)
    return (ret)
  
results = readFile()
print "Average time in logging per txn: " + str(results[0]) + " with " + str(results[1]) + " txns."
print ""



    
            
