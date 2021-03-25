#! /bin/bash

ip=10.0.0.3
echo "Creating tmux session..."
echo "Attach to the session with the below command:"
echo "tmux a -t home_session"
echo "Detaching from tmux session:"
echo "Type: Ctrl+b d"
tmux new -d -s "home_session"
echo "Building tunnel to: $ip"
ssh -R 10022:127.0.0.1:22 agile@$ip
