local vitesse_themes = require("vitesse.colors").themes

local active = {
  fg = vitesse_themes.foreground,
}

local inactive = {
  fg = vitesse_themes.secondaryForeground,
  bg = vitesse_themes.lowBackground,
}

return {
  separator_style = "padded_slant",
  highlights = {
    -- whole bar background
    fill = {
      bg = vitesse_themes.activeBackground,
    },

    -- inactive tab separator
    separator = {
      fg = vitesse_themes.activeBackground,
      bg = inactive.bg,
    },
    -- active tab separator
    separator_selected = {
      fg = vitesse_themes.activeBackground,
    },

    -- inactive tab
    background = inactive,
    -- active tab, no bg
    buffer_selected = {
      fg = active.fg,
    },

    -- tab close icon
    tab_close = {
      bg = vitesse_themes.activeBackground,
    },
    -- bar close icon
    close_button = inactive,

    -- tab number
    numbers = inactive,

    -- diagnostic start
    diagnostic = inactive,
    hint = inactive,
    hint_diagnostic = inactive,
    info = inactive,
    info_diagnostic = inactive,
    warning = inactive,
    warning_diagnostic = inactive,
    error = inactive,
    error_diagnostic = inactive,
    -- diagnostic end

    -- modified dot
    modified = {
      bg = inactive.bg,
    },

    -- duplicated prefix text
    duplicate = {
      fg = vitesse_themes.ignored,
      bg = inactive.bg,
    },

    pick = {
      bg = inactive.bg,
    },
  },
}
