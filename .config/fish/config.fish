set -x PATH /Users/bojo/.local/bin /usr/local/bin $PATH
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

if not pgrep -x gpg-agent > /dev/null
  gpg-agent --homedir /Users/bojo/.gnupg --daemon --enable-ssh-support
else
  gpg-connect-agent updatestartuptty /bye > /dev/null
end

set -u SSH_AGENT_PID
set -x GPG_TTY (tty)
set -x GPG_AGENT_INFO $HOME/.gnupg/S.gpg-agent:(pgrep gpg-agent):1
set -x SSH_AUTH_SOCK $HOME/.gnupg/S.gpg-agent.ssh

set fish_greeting

if status --is-interactive
    archey -c
    cd
end
