#!/bin/bash

REMOTE=$1
scp -r * percy@192.168.10.10:~/achacachi/
DEPLOY_CMD="sudo chef-solo -c achacachi/solo_config.rb -j achacachi/solo_recipes.json"
ssh percy@192.168.10.10 $DEPLOY_CMD
