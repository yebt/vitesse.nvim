local colors = require("colorbuddy.init").colors
local Group = require("colorbuddy.init").Group
local groups = require("colorbuddy.init").groups

Group.new("NeogitDiffAddHighlight", colors.blue, colors.red)
Group.new("NeogitDiffDeleteHighlight", colors.blue, colors.red)
Group.new("NeogitHunkHeader", groups.Normal, colors.black1)
Group.new("NeogitHunkHeaderHighlight", groups.Normal, colors.red)
Group.new("NeogitDiffContextHighlight", colors.baseForeground, colors.black1)
Group.new("NeogitCommandText", groups.Normal)
Group.new("NeogitCommandTimeText", groups.Normal)
Group.new("NeogitCommandCodeNormal", groups.Normal)
Group.new("NeogitCommandCodeError", groups.Error)
Group.new("NeogitNotificationError", groups.Error, colors.none)
Group.new("NeogitNotificationInfo", groups.Info, colors.none)
Group.new("NeogitNotificationWarning", groups.Warn, colors.none)
