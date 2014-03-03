
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[\e[00;33m\]\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;35m\][\W]\[\e[0m\]\[\e[00;37m\]\\$ \[\e[0m\]"

alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../../'         
alias .4='cd ../../../../'      
alias .5='cd ../../../../../'   
alias .6='cd ../../../../../../'
alias dev='cd ~/dev'
alias ~='cd ~'

alias ll='ls -a'
alias f='open -a Finder ./'
alias rr='rm -rf'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias expressl='node_modules/.bin/express -c stylus'
alias nodem='./node_modules/.bin/nodemon'

#Change into directory after creation
function md () { mkdir -p "$@" && eval cd "\"\$$#\""; }

#Always list directory contents after cd
cd() { builtin cd "$@"; ll; }  

#git aliases
alias up_master="git push origin master"
alias down_master="git pull origin master"

#lazy git commit
function m(){
  git add . -A
  if [ -z "$1" ]
    then
      N=-1
      COMMITS=('Theme development' 'Module development' 'Upgrades' 'Misc development work' 'First Commit')
      for i in "${COMMITS[@]}"
      do
        N=`expr $N + 1`
        echo "[${N}] ${i}"
      done
 
      read selection
 
      MESSAGE=${COMMITS[selection]}
      echo "${MESSAGE}"
      git commit -m "${MESSAGE}"
 
    else
      echo 'other'
      git commit -m $1
  fi
}
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
