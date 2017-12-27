#! /bin/bash
set -e
docker run -v /Users/aaronkalair/go:/home/aaronkalair/go --cap-add SYS_PTRACE -it go
