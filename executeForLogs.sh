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
echo "specific content in this commit" >> log.log
GitHUB_API_URL=https://api.github.com/repos
curl --request GET ${GitHUB_API_URL}/${GITHUB_REPOSITORY}/commits/${GITHUB_SHA} \  >> getFileNameFrromResponse.txt
#curl --request GET https://api.github.com/repos/anurag91png/myRepository/commits/${GITHUB_SHA} \  >> log.log
#cat getFileNameFrromResponse.txt | grep filename | awk '{print $2}' | cut -d '"' -f 2 | tr "@@" '\n' >> log.log
cat getFileNameFrromResponse.txt | grep 'word*' *.txt | awk '{print $2}' | cut -d '"' -f 2 | tr "@@" '\n' >> log.log
