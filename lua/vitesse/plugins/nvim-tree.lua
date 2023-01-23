local colors = require("colorbuddy.init").colors
local Group = require("colorbuddy.init").Group
local styles = require("colorbuddy.init").styles

Group.new("NvimTreeFolderIcon", colors.blue)
Group.new("NvimTreeRootFolder", colors.orange)
Group.new("NvimTreeImageFile", colors.orange)
Group.new("NvimTreeSpecialFile", colors.orange, colors.none, styles.bold + styles.underline)
