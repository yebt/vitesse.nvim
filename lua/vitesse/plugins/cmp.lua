return function(opts)
  local Color = require("colorbuddy.init").Color
  local colors = require("colorbuddy.init").colors
  local Group = require("colorbuddy.init").Group
  local groups = require("colorbuddy.init").groups
  local styles = require("colorbuddy.init").styles
  local link = require("vitesse.utils").highlight_link

  Color.new("codeium", "#09B6A2")

  Group.new("CmpItemKind", colors.green)
  Group.new("CmpItemMenu", colors.secondaryForeground)
  -- Group.new('CmpItemAbbr', colors.secondaryForeground, colors.none, styles.none)
  -- Group.new('CmpItemAbbrMatch', colors.secondaryForeground, colors.none, styles.none)
  Group.new("CmpItemAbbrMatch", colors.blue, colors.none, styles.none)
  Group.new("CmpItemAbbrMatchFuzzy", groups.CmpItemAbbrMatch)
  Group.new("CmpItemAbbrDeprecated", groups.DiagnosticDeprecated, colors.none, styles.strikethrough)
  Group.new("CmpItemKindModule", colors.green, colors.none, styles.none)
  Group.new("CmpItemKindUnit", colors.orange, colors.none, styles.none)
  Group.new("CmpItemKindValue", colors.cyan, colors.none, styles.none)
  Group.new("CmpItemKindEnum", colors.yellow, colors.none, styles.none)
  Group.new("CmpItemKindSnippet", colors.magenta, colors.none, styles.none)
  Group.new("CmpItemKindColor", colors.magenta, colors.none, styles.none)
  Group.new("CmpItemKindFile", colors.purple6, colors.none, styles.none)
  Group.new("CmpItemKindFolder", colors.purple6, colors.none, styles.none)
  Group.new("CmpItemKindStruct", colors.yellow, colors.none, styles.none)
  Group.new("CmpItemKindEvent", colors.orange, colors.none, styles.none)
  Group.new("CmpItemKindCodeium", colors.codeium, colors.none, styles.none)
  Group.new("CmpItemKindDefault", colors.blue, colors.none, styles.none)

  link("CmpItemKindText", "@text")
  link("CmpItemKindMethod", "@method")
  link("CmpItemKindFunction", "@function")
  link("CmpItemKindConstructor", "@constructor")
  link("CmpItemKindField", "@field")
  link("CmpItemKindVariable", "@variable")
  link("CmpitemKindClass", "@class")
  link("CmpItemKindInterface", "@interface")
  link("CmpItemKindProperty", "@property")
  link("CmpItemKindKeyword", "@keyword")
  link("CmpItemKindReference", "@text.reference")
  link("CmpItemKindEnumMember", "@type")
  link("CmpItemKindConstant", "@constant")
  link("CmpItemKindOperator", "@operator")
  link("CmpItemKindTypeParameter", "@type")

  if opts.cmp_cmdline_disable_search_highlight_group then
    local group = vim.api.nvim_create_augroup("vitesse_cmp_cmdline_disable_search_highlight_group", { clear = true })

    vim.api.nvim_create_autocmd("CmdlineEnter", {
      pattern = "*",
      group = group,
      callback = function()
        Group.new("Search", colors.none, colors.none, styles.none)
      end,
    })

    vim.api.nvim_create_autocmd("CmdlineLeave", {
      pattern = "*",
      group = group,
      callback = function()
        -- init.lua
        Group.new("Search", colors.yellow, colors.none, styles.reverse)
      end,
    })
  end
end
