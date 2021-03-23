#! /bin/bash

ip=10.0.0.3
echo "Building tunnel to: $ip"
ssh -R 10022:127.0.0.1:22 agile@$ip
