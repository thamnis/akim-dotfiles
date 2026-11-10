-- Extra autostart processes merged from akim-dotfiles.

-- Clipboard history daemon
o.launch_on_start("wl-paste --type text --watch cliphist store")
o.launch_on_start("wl-paste --type image --watch cliphist store")

-- Restore active Pywal wallpaper and dynamic color scheme
o.launch_on_start("bash -c 'sleep 1 && [ -f ~/.cache/wal/wal ] && wal -R 2>/dev/null || true'")
