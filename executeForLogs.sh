#git log --oneline --decgit log --oorate > log.log
#ls -ltr  > log.log
#git log --pretty=format:"%h - %an, %ar : %s" > log.log
#pwd >> log.log
#git diff >> log.log
#git diff HEAD >> log.log
#git diff --cached >> log.log
#$ find "*.txt" -type f -exec echo file {}; >> log.log
#https://kb.iu.edu/d/admm
find . -name "*.txt" -print > log.log
pwd >> log.log
