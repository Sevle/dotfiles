i#/home/sevle/bin/exclusive_wofi
#!/bin/bash

flock --nonblock /tmp/.wofi.lock wofi -b -a --matching fussy --show drun
