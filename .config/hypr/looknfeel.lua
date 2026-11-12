-- Android 17 / Google Pixel Material 3 Expressive - Look & Feel Configuration
-- Merged with akim-dotfiles aesthetic & Omarchy window manager.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
hl.config({
  general = {
    gaps_in = 6,
    gaps_out = 14,
    border_size = 2,
    resize_on_border = true,
    extend_border_grab_area = 15,
    layout = "dwindle",
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
  decoration = {
    -- Android 17 Material 3 Expressive corner rounding
    rounding = 16,

    -- Window opacity and focus dimming
    active_opacity = 0.94,
    inactive_opacity = 0.85,
    dim_inactive = true,
    dim_strength = 0.12,

    blur = {
      enabled = true,
      size = 6,
      passes = 3,
      new_optimizations = true,
      ignore_opacity = true,
    },

    shadow = {
      enabled = true,
      range = 20,
      render_power = 3,
      color = "rgba(0000003a)",
    },
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
hl.config({
  animations = {
    enabled = true,
    bezier = {
      { name = "md3_decel", a = 0.05, b = 0.7, c = 0.1, d = 1.0 },
      { name = "md3_accel", a = 0.3, b = 0.0, c = 0.8, d = 0.15 },
      { name = "quick", a = 0.15, b = 0.0, c = 0.1, d = 1.0 },
    },
  },
})
