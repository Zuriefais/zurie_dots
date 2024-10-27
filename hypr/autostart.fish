function discord
    hyprctl dispatch workspace 1
    hyprctl dispatch focusmonitor HDMI-A-1
    hyprctl dispatch exec [workspace 1 silent] legcord -- --enable-features=UseOzonePlatform --ozone-platform=wayland
    sleep 5
end

function chrome
    spoof-dpi &
    #--disable-gpu-compositing
    hyprctl dispatch exec [workspace 3 silent] google-chrome-unstable -- --enable-features=UseOzonePlatform --ozone-platform=wayland
end

wpaperd &
discord
hyprctl dispatch focusmonitor DP-3
hyprctl dispatch exec [workspace 2 silent] ayugram-desktop
#hyprctl dispatch exec [workspace 2 silent] skypeforlinux
chrome
#steam -silent &
blueman-applet &
transmission-gtk -m &
wl-paste --watch cliphist store &
swayosd-server &
