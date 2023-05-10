import sys
from pathlib import Path

src_path = Path(sys.argv[1])
dst_path = Path(sys.argv[2])

data = src_path.read_bytes()
data = data.replace(b'\r\n', b'\n')
dst_path.write_bytes(data)
