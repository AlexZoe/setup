#!/bin/zsh

SESSIONNAME="main"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]; then
    tmux new-session -s $SESSIONNAME -n editor -d
    tmux new-window -n build
fi

tmux attach -t $SESSIONNAME
