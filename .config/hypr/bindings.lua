-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- ============================================================================
-- Android 17 / Pixel App Drawer (from akim-dotfiles & Material 3 Expressive)
-- ============================================================================
-- Replaces SUPER + SPACE (was: Omarchy menu) with Google Pixel Rofi App Drawer
o.rebind("SUPER + SPACE", "Pixel App Drawer", os.getenv("HOME") .. "/.config/hypr/scripts/rofi-toggle.sh")
o.bind("SUPER + D", "Pixel App Drawer", os.getenv("HOME") .. "/.config/hypr/scripts/rofi-toggle.sh")
o.bind("SUPER + A", "Pixel App Drawer", os.getenv("HOME") .. "/.config/hypr/scripts/rofi-toggle.sh")

-- ============================================================================
-- Phone Monitor & Tools (Added for Android / Phone integration)
-- ============================================================================
-- Replaces SUPER + SHIFT + M (was: Music webapp) with Phone Monitor
o.rebind("SUPER + SHIFT + M", "Phone Monitor", "alacritty -T 'Phone Monitor' -e phone-monitor")
o.bind("SUPER + ALT + M", "Phone Screen Mirror", "phone-monitor --mirror")

-- ============================================================================
-- Dynamic Wallpapers & Pywal Theme Cycling (from akim-dotfiles)
-- ============================================================================
o.bind("SUPER + ALT + RIGHT", "Next wallpaper", os.getenv("HOME") .. "/.config/hypr/scripts/switch-wallpaper.sh next")
o.bind("SUPER + ALT + LEFT", "Previous wallpaper", os.getenv("HOME") .. "/.config/hypr/scripts/switch-wallpaper.sh prev")
o.bind("SUPER + ALT + W", "Wallpaper picker", os.getenv("HOME") .. "/.config/hypr/scripts/rofi-wallpaper.sh")

-- ============================================================================
-- Notifications & Controls (from akim-dotfiles)
-- ============================================================================
o.bind("SUPER + N", "Notification center", "swaync-client -t -sw")
-- Replaces SUPER + SHIFT + T (was: Activity monitor) with Waybar theme selector
o.rebind("SUPER + SHIFT + T", "Waybar theme selector", os.getenv("HOME") .. "/.config/waybar/scripts/select.sh")
o.bind("SUPER + H", "Quick settings", os.getenv("HOME") .. "/.config/hypr/scripts/quick-settings.sh")
-- Replaces SUPER + G (was: Toggle window grouping) with Keybinds cheatsheet
o.rebind("SUPER + G", "Shortcuts cheatsheet", os.getenv("HOME") .. "/.config/hypr/scripts/keybinds.sh")

-- ============================================================================
-- Screenshots & Screen Recording (from akim-dotfiles)
-- ============================================================================
-- Replaces SUPER + SHIFT + P (was: Google Photos webapp) with Screenshot region
o.rebind("SUPER + SHIFT + P", "Screenshot region", os.getenv("HOME") .. "/.config/hypr/scripts/screenshot.sh region")
o.bind("SUPER + ALT + P", "Screenshot full", os.getenv("HOME") .. "/.config/hypr/scripts/screenshot.sh full")
-- Replaces SUPER + SHIFT + R (was: Clear reminders) with Screen recording
o.rebind("SUPER + SHIFT + R", "Screen recording", os.getenv("HOME") .. "/.config/hypr/scripts/screenshot.sh record")

-- ============================================================================
-- Lock screen & Clipboard (from akim-dotfiles)
-- ============================================================================
o.bind("SUPER + L", "Lock screen", "pidof hyprlock || hyprlock")
o.rebind("SUPER + CTRL + V", "Clipboard history", os.getenv("HOME") .. "/.config/hypr/scripts/cliphist-toggle.sh")
