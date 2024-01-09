#!/bin/bash -e

if [ "$#" -lt 1 ]; then
    echo "Usage: ./transferToEdge.sh <edge_device_ip> [model_zoo_path] [demos_path]"
    echo "model_zoo_path and demos_path are optional, otherwise defaults are used"
    exit 1
fi

edge_device_ip="${1}"
model_zoo="${2:-/tmp/home/root/model_zoo}"
demos="${3:-/tmp/home/root/demos}"

scp -r "${model_zoo}" root@"${edge_device_ip}":/home/root/
# we dont want to keep the demos dir, just contents (recursively)
scp -r "${demos}"/* root@"${edge_device_ip}":/home/root/demos/
