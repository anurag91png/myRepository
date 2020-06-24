#git log --oneline --decgit log --oorate > log.log
#ls -ltr  > log.log
git log --pretty=format:"%h - %an, %ar : %s" > log.log
