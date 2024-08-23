# Prompt.
txtyellow='\e[0;33m'
txtreset='\e[0m'

export PS1="\u@\h \t \[$txtyellow\]\w\[$txtreset\] > $ "

# Aliases.
alias grep='grep --color=auto'
alias ls='ls -l --color=auto'

# ipy [pkg1 pkg2 ...] to launch IPython
# with Rez packages.
function ipy() {
  if [ -z "$1" ]
  then
     rez-env ipython -- ipython
  else
     rez-env ipython "$1" -- ipython
  fi
}

# Suppress Mac warning to move to zsh.
export BASH_SILENCE_DEPRECATION_WARNING=1

# Increase history size
HISTSIZE=10000
HISTFILESIZE=10000

# Ignore duplicate history lines
HISTCONTROL=ignoredups

# Ensure history is always appended to.
shopt -s histappend

# Updates windowsize after each command
shopt -s checkwinsize

# Use Xmodmap configuration
xmodmap ~/.xmodmaprc
