local colors = require("colorbuddy.init").colors
local Group = require("colorbuddy.init").Group
local groups = require("colorbuddy.init").groups

Group.new("GitSignsAddLn", colors.green)
Group.new("GitSignsAddNr", colors.green)
Group.new("GitSignsChangeLn", colors.yellow)
Group.new("GitSignsChangeNr", colors.yellow)
Group.new("GitSignsDeleteLn", colors.red)
Group.new("GitSignsDeleteNr", colors.red)
Group.link("GitSignsCurrentLineBlame", groups.Comment)
