#!/bin/sh

while [ $# -gt 0 ]; do
    key="$1"

    case $key in
        -s|--session)
            SESSIONNAME=$2
            shift
            shift
            ;;
        -a|--attach)
            ATTACH=true
            shift
            ;;
        -h|--help)
            PRINT_HELP=1
            shift
            ;;
        *)    # unknown option
            shift
            ;;
    esac
done

if [ ! $SESSIONNAME ]; then
    echo "no session name"
    exit 1
fi

tmux has-session -t $SESSIONNAME > /dev/null 2>&1

if [ $? != 0 ]; then
    tmux new-session -s $SESSIONNAME -n editor -d
    tmux new-window -n build
    tmux new-window -n docs
fi

if [ -n "$ATTACH" ]; then
    tmux a
fi
