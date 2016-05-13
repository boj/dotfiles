set -x PATH /Users/bojo/.local/bin /Users/bojo/Development/go/standard/bin /usr/local/bin /Users/bojo/Development/google-cloud-sdk/bin /Users/bojo/.cargo/bin $PATH
set -x GOROOT /usr/local/go
set -x GOPATH /Users/bojo/Development/go/standard
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

gnugpg

set fish_greeting

if status --is-interactive
    archey -c
    cd
end
