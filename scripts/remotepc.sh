#! /bin/bash

tmux new -d -s stream "nc -l 19000 | ffplay -fflags nobuffer -"

ip=152.66.246.223
echo "Connecting...."
echo "Building tunnel to: $ip"
ssh -f -R 19000:127.0.0.1:19000 -R 24800:127.0.0.1:24800 -p42222 tunneler@$ip "sleep 10"

barriers --daemon

ssh -J tunneler@152.66.246.223:42222 agile@127.0.0.1 -p 40000 "/bin/bash /home/agile/ReCo/scripts/homepc.sh"
