alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -halF'
alias lr='ls -tRFh'
alias ls='ls --color=auto'
alias lsn="ls -halFG | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'"
alias vdir='vdir --color=auto'

# APT
alias apt-update="sudo apt-get update && sudo apt-get dist-upgrade"
alias apt-clean="sudo apt-get clean && sudo apt-get autoclean && sudo apt-get autoremove"
