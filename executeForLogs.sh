#!/bin/bash
#git log --oneline --decgit log --oorate > log.log
#ls -ltr  > log.log
#git log --pretty=format:"%h - %an, %ar : %s" > log.log
#pwd >> log.log
#git diff >> log.log
#git diff HEAD >> log.log
#git diff --cached >> log.log
#$ find "*.txt" -type f -exec echo file {}; >> log.log
#git log --pretty=oneline --graph --name-status > log.log
echo "current directory" >> log.log
pwd >> log.log
#https://kb.iu.edu/d/admm
#find . -name "*.txt" -print >> log.log
echo "git log name-only " >> log.log
git log --name-only >> log.log
#echo "git log name-status" >> log.log
#git log --name-status >> log.log
#echo "git log stat" >> log.log
#git log --stat >> log.log
#echo ${GITHUB_REPOSITORY_OWNER} >> log.log
echo "curl  --request GET '/repos/${GITHUB_REPOSITORY}/git/commits/${GITHUB_SHA}'"  >> log.log
