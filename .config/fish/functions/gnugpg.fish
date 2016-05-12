function gnugpg
    if not pgrep -x gpg-agent > /dev/null
        gpg-agent --enable-ssh-support --use-standard-socket --daemon
    end
    
    set pid (pgrep -x gpg-agent)
    set -x SSH_AGENT_PID $pid
    set -x GPG_AGENT_INFO ~/.gnupg/S.gpg-agent:$pid:1
    set -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
end
