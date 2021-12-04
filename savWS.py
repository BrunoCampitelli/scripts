import os
import json
stream = os.popen('i3-msg -t get_workspaces')
ret = stream.read()
stream.close()
ret = ret.strip('\n')
parsed = json.loads(ret)

fid = open("wssav","w")
focus = 0
visible = []
for p in parsed: 
    fid.write("i3-msg workspace "+p["name"]+"\n")
    fid.write("i3-msg move workspace to output "+p["output"]+"\n")
    if p["focused"]:
        focus = p["name"]
    if p["visible"]:
        visible.append(p["name"])

for v in visible:
    if v is not focus:
        fid.write("i3-msg workspace "+v+"\n")
fid.write("i3-msg workspace "+focus+"\n")
fid.close()
