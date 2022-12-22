# Set prompt to full path (with home expansion).
PROMPT='%n@%m %F{yellow}%~%f $ '

# ls and grep colours.
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Partial history completion.
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
