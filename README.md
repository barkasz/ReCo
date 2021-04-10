# ReCo
ReCo Remote Control

README.md szerkesztéséhez segítségek:
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
https://guides.github.com/features/mastering-markdown/

# Tunnel building

From *HOME_PC* (which we want to access remotely) run the following command to build the remote port forwarding tunnel to *CLOUD*. The command starts a __TMUX__ session with "home_session" name.
```
./r_tunnel.sh
```

From *REMOTE_PC* (which we use to access *HOME_PC*) run the following command to build the local port forwarding tunnel to *CLOUD*:
```
./l_tunnel.sh
```

From *REMOTE_PC* run the following command to connect to *HOME_PC* through the tunnel on *CLOUD*:
```
./connect.sh
```
