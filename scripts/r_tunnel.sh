#! /bin/bash

ip=10.0.0.3
echo "Building tunnel to: $ip"
ssh -L 20022:127.0.0.1:10022 agile@$ip
