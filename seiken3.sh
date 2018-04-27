#!/bin/bash
if [ "$1" = "play" ]; then
    git pull;
    zsnes -zs 0 seiken3.smc &
  elif [ "$1" = "save" ]; then
    git add -A;
    git commit -m "save state";
    git push;
    echo "Save state successfully pushed to github"
  else
    echo "Wrong usage! [./seiken3.sh <play/save>]"
fi    
