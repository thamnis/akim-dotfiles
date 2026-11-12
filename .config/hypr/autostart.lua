-- Extra autostart processes merged from akim-dotfiles & Android 17 / Pixel Experience.

-- Clipboard history daemon
o.launch_on_start("wl-paste --type text --watch cliphist store")
o.launch_on_start("wl-paste --type image --watch cliphist store")

-- ADB server for Google Pixel Phone integration
o.launch_on_start("adb start-server")

-- Android 17 Material 3 Waybar status bar
o.launch_on_start("waybar")

-- Restore active Pywal wallpaper and dynamic color scheme
o.launch_on_start(os.getenv("HOME") .. "/.config/hypr/scripts/apply-pywal-theme.sh")
