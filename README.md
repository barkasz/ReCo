# ReCo
ReCo Remote Control

README.md szerkesztéséhez segítségek:
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
https://guides.github.com/features/mastering-markdown/

# Tunnel building

From *HOME_PC* run the following command to build the remote port forwarding tunnel to *CLOUD*:
```
./r_tunnel.sh
```

From *REMOTE_PC* run the following command to build the local port forwarding tunnel to *CLOUD*:
```
./l_tunnel.sh
```

From *REMOTE_PC* run the following command to connect to *HOME_PC*:
```
./connect.sh
```
