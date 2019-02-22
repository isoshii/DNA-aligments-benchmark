import os
from collections import defaultdict

FILES_FOLDER = '/home/iso/Pulpit/WynikiFINALNE/Mafft-GINSI'
data = defaultdict(list)
files = os.listdir(FILES_FOLDER)
print(files)
for f in files:
    with open(os.path.join(FILES_FOLDER, f)) as input_file:
        lines = input_file.readlines()
        for line in lines:
            tmp = line.split(':')
            key = tmp[0]
            value = tmp[1]
            data[key].append(float(value))

print('Here is the merged data:')
print(data)
