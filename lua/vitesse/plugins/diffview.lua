local colors = require("colorbuddy.init").colors
local Group = require("colorbuddy.init").Group
local styles = require("colorbuddy.init").styles

Group.new("DiffAdd", colors.green, colors.none, styles.bold, colors.green)
Group.new("DiffChange", colors.yellow, colors.none, styles.bold, colors.yellow)
Group.new("DiffDelete", colors.red, colors.none, styles.bold)
Group.new("DiffText", colors.blue, colors.none, styles.bold, colors.blue)
