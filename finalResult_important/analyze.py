# Using readlines()
name = "CPU_SILO_SSD.txt"
file1 = open(name, 'r')
Lines = file1.readlines()
  
count = 0
total = 0
arr = []
# Strips the newline character
for line in Lines:
    strs = line.split()
    if(len(strs) < 4 or strs[0] ==  "n"):
        continue
    arr.append(100-int( strs[4]))
    count = count+1

arr.sort()
idx = len(arr)/2
print(idx)
print(arr[idx])
print(total)
print(count)
print(float(total) / float(count))
