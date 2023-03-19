# QT specific
set -x QT_AUTO_SCREEN_SCALE_FACTOR 1
set -x QT_QPA_PLATFORM "wayland;xcb"
set -x QT_WAYLAND_DISABLE_WINDOWDECTORATION 1
set -x QT_QPA_PLATFORMTHEME qt5ct

# Toolkits
# set -x SDL_VIDEODRIVER wayland
set -x _JAVA_AWT_WM_NONEREPARENTING 1
set -x CLUTTER_BACKEND "wayland"
set -x GDK_BACKEND "wayland,x11"

# Theming
set -x GTK_THEME Nordic
set -x XCURSOR_THEME macOS-Monterey-White
set -x XCURSOR_SIZE 24

fish_add_path ~/.local/bin/ 
alias neofetch hyfetch
alias cat bat
set -x GPG_TTY (tty)

set fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vim=nvim
end

function fish_prompt
    printf '%s%s %sin %s%s%s\n→ %s' \
		(set_color --bold green) $USER \
		(set_color normal) \
		(set_color --bold red) (prompt_pwd) \
		(set_color blue) \
		(set_color normal)
end
