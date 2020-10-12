# see also: 
#   plugins/file-custom
#   plugins/net-custom

# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias c="clear"

# Directories
alias dotfiles="cd $DOTFILES"

# JS/node/npm/nvm
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run watch"
alias npmg="npm list -g --depth 0"

## Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"

# Find memory hogs
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

# cpuHogs:        Find CPU hogs
alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

# topForever:     Continual 'top' listing (every 10 seconds)
alias topForever='top -l 9999999 -s 10 -o cpu'

# ttop: Recommended 'top' invocation to minimize resources
#       http://www.macosxhints.com/article.php?story=20060816123853639
alias ttop="top -R -F -s 10 -o rsize"