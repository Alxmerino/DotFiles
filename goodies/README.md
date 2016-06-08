# Goodies

Contains some goodies and commands that don't necesarily need to be on an alias or function

## Kill a port (e.g. localhost:3000)
Sometimes this error will come up `Port 3000 is already in use` so killing the port will be necessary to use it again.

Find the PID of the process with the port number e.g. 
```bash
lsof -ti tcp:3000
```

Assuming you have the necessary permissions, you can pass the result to `kill` as a list of PIDs with command substitution:
```bash
kill -9 $(lsof -ti tcp:3000)
```

Start using the port again or have a burger or something. 🤔
Source: [StackOverflow](http://askubuntu.com/questions/346394/how-to-write-a-shscript-to-kill-9-a-pid-which-is-found-via-lsof-i)