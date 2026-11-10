-- Change the default Omarchy look'n'feel, merged with akim-dotfiles aesthetics.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 16,
    border_size = 2,
    resize_on_border = true,
    extend_border_grab_area = 15,
    layout = "dwindle",
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
  decoration = {
    -- Smooth rounded corners (akim-dotfiles style)
    rounding = 10,

    -- Window opacity and focus dimming
    active_opacity = 0.92,
    inactive_opacity = 0.82,
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
      range = 14,
      render_power = 3,
      color = "rgba(1a1a1aee)",
    },
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
hl.config({
  animations = {
    enabled = true,
    bezier = {
      { name = "easeOutQuint", a = 0.23, b = 1, c = 0.32, d = 1 },
      { name = "quick", a = 0.15, b = 0, c = 0.1, d = 1 },
    },
  },
})
