#!/bin/bash
if [ -d .git ]
then
  if cat .git/config | grep -A 10 "\[user\]" >> /dev/null
  then
    echo '[user] field already exists.'
    echo '.git/config:'
    cat .git/config
  else
    echo 'No [user] line found'
    echo '.git/config:'
    cat .git/config
    read -p 'Add git credentials to file? (y/n)' ADD

    if [ $ADD == 'y' ]
    then
      echo 'Adding git credentials.'
      cat ~/.glitter >> .git/config
    fi
  fi
else
  echo "Not a git repository."
fi
