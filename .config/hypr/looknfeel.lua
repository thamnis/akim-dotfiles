-- Change the default Omarchy look'n'feel.
-- Restored to original user configuration, keeping the blurry background effect.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
  decoration = {
    -- Use round window corners.
    rounding = 8,

    -- Dim unfocused windows (0.0 = no dim, 1.0 = fully dimmed).
    dim_inactive = true,
    dim_strength = 0.15,

    -- Blurry background (kept as requested)
    blur = {
      enabled = true,
      size = 6,
      passes = 3,
      new_optimizations = true,
      ignore_opacity = true,
      noise = 0.0117,
      contrast = 0.9,
      brightness = 0.8,
      vibrancy = 0.2,
      popups = true,
    },
  },
})

-- Transparency for windows to display the blurry background
hl.config({
  decoration = {
    active_opacity = 0.92,
    inactive_opacity = 0.85,
  },
})

-- Layer rules to blur the background behind Omarchy shell surfaces (bar, menus, notifications)
hl.layer_rule({
  match = { namespace = "^(omarchy-bar|omarchy-menu|omarchy-notifications|omarchy-osd|omarchy-dock)$" },
  blur = true,
  ignore_alpha = 0.2,
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
hl.config({
  animations = {
    -- Enable all animations.
    enabled = true,
  },
})
