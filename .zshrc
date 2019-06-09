# Colors
eval "$(dircolors -b)"
autoload -U colors && colors

# Prompt
autoload -Uz promptinit && promptinit
precmd () {print -Pn "\e]0;%n@%m: %~\a"}
PROMPT="%n@%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%# "

# History
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt extendedhistory
setopt incappendhistory
setopt sharehistory

# Options
setopt auto_resume
setopt autocd
setopt completeinword
setopt extendedglob
unsetopt caseglob
unsetopt correctall

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# umask
umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Misc
for file in ~/.zsh/*.zsh; do
    source "$file"
done

# Editor
if [ -z "$EDITOR" ]; then
    export EDITOR=/bin/nano
fi
