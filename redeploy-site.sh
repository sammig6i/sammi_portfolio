#!/bin/bash

pkill -f tmux

cd /root/MLH_Portfolio 

git fetch && git reset origin/main --hard

source python3-virtualenv/bin/activate

pip install -r requirements.txt

tmux new-session -d -s flask-server "cd /root/MLH_Portfolio && source /root/MLH_Portfolio/python3-virtualenv/bin/activate && flask run --host=0.0.0.0"

