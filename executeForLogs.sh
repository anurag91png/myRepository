#!/bin/bash
#git log --oneline --decgit log --oorate > log.log
#ls -ltr  > log.log
#git log --pretty=format:"%h - %an, %ar : %s" > log.log
#pwd >> log.log
#git diff >> log.log
#git diff HEAD >> log.log
#git diff --cached >> log.log
#$ find "*.txt" -type f -exec echo file {}; >> log.log
pwd > log.log
#https://kb.iu.edu/d/admm
find . -name "*.txt" -print >> log.log
echo "git log name-onl" >> log.log
git log --name-only >> log.log
echo "git log name-status" >> log.log
git log --name-status >> log.log
echo "git log stat" >> log.log
git log --stat >> log.log
echo "bash script" >> log.log
for ((i=0; i<=$1; i++))
do
    sha1=git log -1 --skip=$i --pretty=format:%H
    echo "HEAD~$i $sha1" >> log.log
    git diff --stat HEAD~$(($i+1)) HEAD~$i >> log.log
done
