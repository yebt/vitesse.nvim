local colors = require("colorbuddy.init").colors
local Group = require("colorbuddy.init").Group
local groups = require("colorbuddy.init").groups
local styles = require("colorbuddy.init").styles

Group.new("SagaBorder", groups.FloatBorder)
Group.new("CodeActionText", colors.yellow)
Group.new("FinderSelection", colors.primary, colors.none, styles.bold)
Group.new("RenameNormal", colors.variable)
Group.link("DiagnosticErrorBorder", groups.Error)
Group.link("DiagnosticWarnBorder", groups.Warning)
Group.link("DiagnosticHintBorder", groups.Hint)
Group.link("DiagnosticInfoBorder", groups.Information)
Group.link("SagaWinbarSep", groups.Normal)
