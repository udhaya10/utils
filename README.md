utils
=====

remove the all merged branches from local

git branch --merged | grep -v '\*\|master\|devel' | xargs -n 1 git branch -d

[ link ] (http://stackoverflow.com/questions/6127328/how-can-i-delete-all-git-branches-which-have-been-merged)
