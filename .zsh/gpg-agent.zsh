#if test -f "$HOME/.gpg-agent-info" && kill -0 `cat "$HOME/.gpg-agent-info" | grep -Eo "\:[0-9]+\:" | tr -d :` 2>/dev/null; then
#	source "$HOME/.gpg-agent-info"
#else
#	eval `gpg-agent --daemon --enable-ssh-support --write-env-file "$HOME/.gpg-agent-info"`
#fi
#export GPG_TTY=`tty`
#export GPG_AGENT_INFO
#export SSH_AGENT_PID
