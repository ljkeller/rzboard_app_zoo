#!/bin/bash -e

if [ $# -ne 1 ]; then
    echo "Usage: $0 <edge_ip>"
    exit 1
fi
edge_ip=$1

make
scp -r ../app_mipi root@"${edge_ip}":/tmp/
