from os import listdir, path
from statistics import mean, stdev
import matplotlib.pyplot as plt
from matplotlib.figure import Figure
import numpy as np
import json
import math
input_dir = "results"

def fcontent(f):
    tmp = open(f, "r")
    content = tmp.read()
    tmp.close()
    return content

def poly_eq(coeffs):
    return lambda x: sum([coeffs[i]*(x**i) for i in range(0,len(coeffs))])

def process_dir(input_dir):
    fs = listdir(input_dir)
    fs.sort(key = lambda x: int(x[:x.find(".")]))
    fswid = fs
    fs = [input_dir+"/"+f for f in fs]
    cs = [fcontent(f) for f in fs]
    js = [json.loads(c) for c in cs]

    for j in js:
        if j["rest_len"] != 0:
            print("WARNING: {} was not processed entirely".format(j["fname"]))
    return (fswid, js)

def process_set_of(input_dir):
    fs = listdir(input_dir)
    fs = [d for d in fs if path.isdir(input_dir + "/" + d)]
    fout = []
    if len(fs):
        fs0, js0 = process_dir(input_dir + "/" + fs[0])
        fout = []
        fout.append((fs[0], js0))
        for d in fs[1:]:
            fsd, jsd = process_dir(input_dir + "/" + d)
            if fsd == fs0:
                fout.append((d, jsd))
            else:
                print("WARNING: {} does not have the same set of results as {}".format(d, fs[0]))
    return fout
            

fig = plt.figure(figsize=(6,3))
axis = fig.add_subplot(1, 1, 1)
axis.set_xlabel("# Characters")
axis.set_ylabel("Processing Time (s)")

def add_plot(js, name):
    try:
        perf_arr = [(int(j["sem_tokens_len"][5:]) if j["sem_tokens_len"][5:].isdecimal() else 0)/mean(j["times"]) for j in js]
        sum_time = sum([mean(j["times"]) for j in js])
        sum_input = sum([j["input_len"] for j in js])
        print ("{:10s}\ttoken/second: {:e}\t#characters: {}\ttotal process time: {:0.07f}\t#files: {}".format(name, mean(perf_arr), sum_input, sum_time, len(perf_arr)))
    except Exception as e:
        pass
    xs = [j["input_len"] for j in js]
    ys = [mean(j["times"]) for j in js]
    e = [0 for j in js]

    zs = np.polyfit(xs,ys,1)
    f = poly_eq(zs[::-1])
    fxs = np.arange(0,max(xs),10)
    fys = [f(x) for x in fxs]

    if(name == 'CoqLex'):
        p = axis.plot(fxs,fys, color='darkgreen',label = name)
    else:
        p = axis.plot(fxs,fys, label = name)
    axis.errorbar(xs, ys, yerr=e, fmt='o', color = p[-1].get_color(), mfc='none', ms=4)

fout = process_set_of(input_dir)

for (name, js) in fout:
    add_plot(js, name)

axis.legend(loc='best')

plt.tight_layout()
plt.savefig('compare.png')
plt.show()
