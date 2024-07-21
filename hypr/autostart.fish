function discord
    hyprctl dispatch workspace 1
    /opt/ArmCord/armcord & set discord_pid $last_pid &
    echo $discord_pid
end

discord &
fish /home/zuriefais/Pictures/auto_wallpaper.fish &
hyprctl dispatch exec [workspace 2 silent] telegram-desktop &
hyprctl dispatch exec [workspace 3 silent] google-chrome &
hyprctl dispatch exec [workspace 4 silent] kitty zellij &
blueman-applet &
