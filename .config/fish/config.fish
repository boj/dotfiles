set -x PATH $PATH:$HOME/.local/bin:$HOME/.cargo/bin:/opt/bin
set -x PATH $PATH:$HOME/.dotnet:$HOME/.dotnet/tools

set -x TERMINAL wezterm
set -x EDITOR kak
set -x VISUAL kak
set -x MOZ_ENABLE_WAYLAND 1 # firefox
set -x QT_QPA_PLATFORM xcb # obs studio
set -x NNN_PLUG 'h:hexview;v:imgview;m:-mediainf;c:chksum'
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden'
set -x DOTNET_ROOT $HOME/.dotnet

test -d $HOME/.xdg || mkdir $HOME/.xdg
set -x XDG_RUNTIME_DIR $HOME/.xdg
test -d $HOME/.xdg/$USER || mkdir $HOME/.xdg/$USER 
set -x XDG_USER_DIR $HOME/.xdg/$USER

set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path yes

set fish_greeting

if status is-interactive
    fastfetch
end

if test -z $DISPLAY; and test (tty) = "/dev/tty1"
    #river
    #sway
    Hyprland
end

function fish_prompt
    set_color -o black
    printf '\n%s@%s %s > ' $USER $hostname (prompt_pwd)
end

function ls
    command ls $argv
end

for color in (set | grep -Eo '^fish_color_[a-zA-Z0-9_]+')
    set $color normal
end
set fish_color_autosuggestion black
set fish_color_error red
set fish_pager_color_progress black

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/bojo/.ghcup/bin $PATH # ghcup-env
