# progs
export EDITOR=vim
export VISUAL=$EDITOR
export BROWSER=chromium
export PAGER=less

# go
export GOARCH=amd64
export GOROOT=$HOME/go
export GOBIN=$GOROOT/bin

# locale
export LANG=en_US.UTF-8
export LC_COLLATE=C
export LC_NUMERIC=C

# path
PATH=$GOBIN:$HOME/bin:$PATH
export CDPATH=.:/mnt/Gluttony:/mnt/Haven

[ -n $BASH -a -r ~/.bashrc ] && . ~/.bashrc
