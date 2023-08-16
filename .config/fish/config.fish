set -x PATH $PATH:$HOME/.local/bin:$HOME/.cargo/bin:/opt/bin

set -x TERMINAL wezterm
set -x EDITOR kak
set -x VISUAL kak
set -x MOZ_ENABLE_WAYLAND 1 # firefox
set -x QT_QPA_PLATFORM xcb # obs studio
set -x NNN_PLUG 'h:hexview;v:imgview;m:-mediainf;c:chksum'
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden'

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
