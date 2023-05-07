return function(_)
  local Group = require("colorbuddy.init").Group
  local colors = require("colorbuddy.init").colors
  local groups = require("colorbuddy.init").groups
  local styles = require("colorbuddy.init").styles
  local link = require("vitesse.utils").highlight_link

  -- diagnostics
  Group.new("DiagnosticError", groups.Error)
  Group.new("DiagnosticWarn", colors.yellow)
  Group.new("DiagnosticInfo", colors.cyan)
  Group.new("DiagnosticHint", colors.green)
  -- FIXME: `styles.strikethrough` not working
  Group.new("DiagnosticDeprecated", groups.Comment, colors.none, styles.italic + styles.underline)
  Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.underline)
  Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.underline)
  Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.underline)
  Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.underline)
  Group.link("DiagnosticVirtualTextHint", groups.Comment)
  Group.link("DiagnosticTextWarn", groups.Warn)

  -- lsp
  Group.new("LspReferenceRead", colors.none, colors.none, styles.underline)
  Group.link("LspReferenceText", groups.LspReferenceRead)
  Group.new("LspReferenceWrite", colors.none, colors.none, styles.underline)
  Group.new("LspFloatWinBorder", colors.primary)
  Group.new("LspLinesDiagBorder", colors.primary)
  Group.new("LspCodeLens", groups.Comment) -- lsp hint text, cmp
  Group.new("LspInfoBorder", groups.FloatBorder)

  -- lsp semantic tokens
  link("@lsp.type.comment", "@comment")
  link("@lsp.type.enum", "@type")
  link("@lsp.type.macro", "@constant")
  link("@lsp.type.parameter", "@parameter")
  link("@lsp.type.variable", "@variable")
  link("@lsp.type.namespace", "@namespace")
  link("@lsp.type.property", "@property")
  link("@lsp.type.type", "@type")
end
