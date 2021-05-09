# ReCo
ReCo Remote Control

README.md szerkesztéséhez segítségek:
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
https://guides.github.com/features/mastering-markdown/

# Remote control

From *HOME_PC* (which we want to access remotely) run the following command to build the remote port forwarding tunnel to *CLOUD*. The command forwards a port to the ssh server of the home PC.
```
./sshlisten.sh
```

From *REMOTE_PC* (which we use to access *HOME_PC*) run the following command to build the local port forwarding tunnel to *CLOUD*:
```
./remotepc.sh
```

