#! /bin/bash

ip=152.66.246.223
echo "Building tunnel to: $ip"
ssh -L 19000:127.0.0.1:19000 tunneler@$ip -p42222
