#!/usr/bin/env bash

echo "Loading kernel module required by roo: br_netfilter"
sudo modprobe br_netfilter || echo "ERROR: modprobe br_netfilter exited non-zero"

