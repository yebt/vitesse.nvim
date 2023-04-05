return function(_)
  local colors = require("colorbuddy.init").colors
  local Group = require("colorbuddy.init").Group
  local groups = require("colorbuddy.init").groups

  Group.new("NeoTreeFloatBorder", groups.FloatBorder)
  Group.new("NeoTreeTitleBar", colors.baseForeground, colors.none)

  Group.new("NeoTreeNormal", groups.Normal)
  Group.new("NeoTreeNormalNC", groups.NormalNC)
  Group.new("NeoTreeDimText", colors.secondaryForeground)

  Group.new("NeoTreeFileIcon", groups.NeoTreeNormal)
  Group.new("NeoTreeFileName", groups.NeoTreeNormal)
  Group.new("NeoTreeFileNameNC", groups.NeoTreeNormalNC)
  Group.new("NeoTreeDirectoryIcon", groups.Folder)
  Group.new("NeoTreeDirectoryName", groups.NeoTreeFileName)
  Group.new("NeoTreeDirectoryNameNC", groups.NeoTreeFileNameNC)
  Group.new("NeoTreeDotfile", colors.comment)

  Group.new("NeoTreeGitAdded", colors.green)
  Group.new("NeoTreeGitConflict", colors.orange)
  Group.new("NeoTreeGitDeleted", colors.red)
  Group.new("NeoTreeGitIgnored", colors.comment)
  Group.new("NeoTreeGitModified", colors.blue)
  Group.new("NeoTreeGitUntracked", colors.cyan)
end
