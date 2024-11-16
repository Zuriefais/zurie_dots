source (/usr/bin/starship init fish --print-full-init | psub)
source /home/zuriefais/.config/fish/functions/yazi.fish
zoxide init fish | source
function zw
    eval "$argv"
    set exit_code $status
    zellij pipe --name zj-status-bar:cli:tab_alert --args "pane_id=$ZELLIJ_PANE_ID,exit_code=$exit_code"
end

function ed
    hyprctl dispatch exec [workspace 5] zeditor $PWD
end

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# Created by `pipx` on 2024-08-29 16:28:28
set PATH $PATH /home/zuriefais/.local/bin
