# set a sane sorting locale
export LC_COLLATE=C

# progs
export EDITOR=vim
export VISUAL=$EDITOR
export BROWSER=chromium
export PAGER=less

export PATH=~/bin:$PATH
export CDPATH=.:~/

# if interactive, source .bashrc
[[ -n $PS1 && -f ~/.bashrc ]] && . ~/.bashrc
