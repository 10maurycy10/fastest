import matplotlib.pyplot as plt
import sys
import numpy as np

times = []
langs = []

for line in sys.stdin.readlines():
    split = line.rstrip().split(" ")
    time = split[0]
    time = time.split("m")
    time = int(time[0]) * 60 + float(time[1].split('s')[0])
    lang = " ".join(split[1:])
    times.append(time)
    langs.append(lang)


fig, ax = plt.subplots()

ind = np.arange(len(times))

ax.set_xticks(ind, labels=langs)
plt.bar(ind, times)
plt.show()
