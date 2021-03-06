
#Utils
#@link http://superuser.com/questions/408912/how-can-i-clean-up-my-bashrc-zshrc-file
# is $1 missing from $2 (or PATH) ?
no_path() {
    eval "case :\$${2-PATH}: in *:$1:*) return 1;; *) return 0;; esac"
  }
  # if $1 exists and is not in path, append it
  add_path () {
    [ -d ${1:-.} ] && no_path $* && eval ${2:-PATH}="\$${2:-PATH}:$1"
  }
  # if $1 exists and is not in path, prepend it
  pre_path () {
    [ -d ${1:-.} ] && no_path $* && eval ${2:-PATH}="$1:\$${2:-PATH}"
  }
  # if $1 is in path, remove it
  del_path () {
    no_path $* || eval ${2:-PATH}=`eval echo :'$'${2:-PATH}: |
        sed -e "s;:$1:;:;g" -e "s;^:;;" -e "s;:\$;;"`
      }
#add maven path
add_path /opt/mvn/bin
