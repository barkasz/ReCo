#! /bin/bash

tmux new -d -s stream "nc -l 19000 | ffplay -fflags nobuffer -"

ip=152.66.246.223
echo "Connecting...."
#echo "Creating tmux session..."
#echo "Attach to the session with the below command:"
#echo "tmux a -t home_session"
#echo "Detaching from tmux session:"
#echo "Type: Ctrl+b d"
#tmux new -d -s "home_session"
echo "Building tunnel to: $ip"
ssh -f -R 19000:127.0.0.1:19000 -p42222 tunneler@$ip "sleep 10"

ssh -J tunneler@152.66.246.223:42222 agile@127.0.0.1 -p 40000 "/bin/bash /home/agile/ReCo/homepc.sh"
