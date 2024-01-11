local vitesse_theme = require("vitesse.palette").themes

local vitesse = {}

vitesse.normal = {
  a = { bg = vitesse_theme.primary, fg = vitesse_theme.activeBackground },
  b = { bg = vitesse_theme.lowActiveBackground, fg = vitesse_theme.primary },
  c = { bg = vitesse_theme.activeBackground, fg = vitesse_theme.activeForeground },
}

vitesse.insert = {
  a = { bg = vitesse_theme.variable, fg = vitesse_theme.activeBackground },
  b = { bg = vitesse_theme.lowActiveBackground, fg = vitesse_theme.variable },
}

vitesse.command = {
  a = { bg = vitesse_theme.yellow, fg = vitesse_theme.activeBackground },
  b = { bg = vitesse_theme.lowActiveBackground, fg = vitesse_theme.yellow },
}

vitesse.visual = {
  a = { bg = vitesse_theme.magenta, fg = vitesse_theme.activeBackground },
  b = { bg = vitesse_theme.lowActiveBackground, fg = vitesse_theme.magenta },
}

vitesse.replace = {
  a = { bg = vitesse_theme.red, fg = vitesse_theme.activeBackground },
  b = { bg = vitesse_theme.lowActiveBackground, fg = vitesse_theme.red },
}

vitesse.terminal = {
  a = { bg = vitesse_theme.blue, fg = vitesse_theme.activeBackground },
  b = { bg = vitesse_theme.lowActiveBackground, fg = vitesse_theme.blue },
}

vitesse.inactive = {
  a = { bg = vitesse_theme.lowBackground, fg = vitesse_theme.ignored },
  b = { bg = vitesse_theme.lowActiveBackground, fg = vitesse_theme.ignored },
  c = { bg = vitesse_theme.background, fg = vitesse_theme.ignored },
}

return vitesse
