#! /bin/bash

ip=10.0.0.3
echo "Creating tmux session..."
echo "Attache to the session with below command:"
echo "tmux a -t home_session"
tmux new -d -s "home_session"
echo "Building tunnel to: $ip"
ssh -R 10022:127.0.0.1:22 agile@$ip
