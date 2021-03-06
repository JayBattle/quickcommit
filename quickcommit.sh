#!/bin/bash
# This script does a quick git commit taking the commit message as an arg
# Syntax: quickcommit.sh
# Requires: git
# Prequisites: authenticate w/ git Ex: (git config --global user.email "EMAIL") (add git ssh key)
# Note: Do not use sudo!
CommitMessage=$1

#ssh-add ~/.ssh/jmfgitsshkey
echo "git status"
git status
echo "git config --global --add safe.directory ."
sudo git config --global --add safe.directory $(pwd)
echo "git add ."
sudo git add .
echo "git status"
git status
echo "git commit -m $CommitMessage"
sudo git commit -m "$CommitMessage"
echo "git push"
git push
echo "git pull"
git pull