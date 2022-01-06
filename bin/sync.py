import sys
import os

target_host = 'desktop'
if sys.platform == 'win32':
    target = 'laptop'

src_path = os.path.join(os.getenv("GOPATH") , 'src', 'myDir', 'demo')
target_path = "\e\Go\src\myDir"
if sys.platform == 'win32':
    target_path = "/home/yjn/go/src/myDir/"

cmd = f"scp -r {src_path} {target}:{target_path}"
print(cmd)
# os.popen()