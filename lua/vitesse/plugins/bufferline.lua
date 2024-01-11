local vitesse_themes = require("vitesse.palette").themes

local active = {
  fg = vitesse_themes.foreground,
}

local inactive = {
  fg = vitesse_themes.secondaryForeground,
  bg = vitesse_themes.lowBackground,
}

local M = {
  -- whole bar background
  fill = {
    bg = vitesse_themes.activeBackground,
  },

  -- inactive tab
  background = inactive,

  -- inactive tab separator
  separator = {
    fg = vitesse_themes.activeBackground,
    bg = inactive.bg,
  },

  -- active tab separator
  separator_selected = {
    fg = vitesse_themes.activeBackground,
  },

  buffer_selected = {
    fg = active.fg,
  },

  -- top-right
  tab = {
    bg = vitesse_themes.activeBackground,
  },
  tab_selected = active,
  tab_separator = {
    fg = vitesse_themes.activeBackground,
    bg = vitesse_themes.activeBackground,
  },
  tab_separator_selected = {
    fg = vitesse_themes.activeBackground,
  },

  -- <-, ->
  trunc_marker = {
    bg = vitesse_themes.activeBackground,
  },

  -- tab close icon
  tab_close = {
    bg = vitesse_themes.activeBackground,
  },

  -- bar close icon
  close_button = inactive,

  -- tab number
  numbers = inactive,

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
}

-- mode = 'buffers', keep same colors
M.separator_visible = M.separator
M.buffer_visible = inactive
M.close_button_visible = M.close_button
M.numbers_visible = M.numbers
M.modified_visible = M.modified
M.duplicate_visible = M.duplicate
M.pick_visible = M.pick
M.diagnostic_visible = M.diagnostic
M.hint_visible = M.hint
M.hint_diagnostic_visible = M.hint_diagnostic
M.info_visible = M.info
M.info_diagnostic_visible = M.info_diagnostic
M.warning_visible = M.warning
M.warning_diagnostic_visible = M.warning_diagnostic
M.error_visible = M.error
M.error_diagnostic_visible = M.error_diagnostic

return M
