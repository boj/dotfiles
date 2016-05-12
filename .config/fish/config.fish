set -x PATH /Users/bojo/.local/bin /Users/bojo/Development/go/standard/bin /usr/local/bin /Users/bojo/Development/google-cloud-sdk/bin /Users/bojo/.cargo/bin $PATH
set -x GOROOT /usr/local/go
set -x GOPATH /Users/bojo/Development/go/standard
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

if not pgrep -x gpg-agent > /dev/null
  set pid (gpg-agent --enable-ssh-support --use-standard-socket --daemon | sed '3!d' | cut -d"=" -f2 | cut -d";" -f1)
  set -x SSH_AGENT_PID $pid
  set -x GPG_AGENT_INFO ~/.gnupg/S.gpg-agent:$pid:1
  set -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
end

set fish_greeting

if status --is-interactive
    archey -c
    cd
end

set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish
