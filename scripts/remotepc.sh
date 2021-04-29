#! /bin/bash

ip=152.66.246.223
echo "Creating tmux session..."
echo "Attach to the session with the below command:"
echo "tmux a -t home_session"
echo "Detaching from tmux session:"
echo "Type: Ctrl+b d"
tmux new -d -s "home_session"
echo "Building tunnel to: $ip"
ssh -R 19000:127.0.0.1:19000 -p42222 tunneler@$ip
