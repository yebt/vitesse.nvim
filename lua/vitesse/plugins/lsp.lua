return function(opts)
  local diagnostic_virtual_text_background = opts.diagnostic_virtual_text_background

  local Group = require("colorbuddy.init").Group
  local colors = require("colorbuddy.init").colors
  local groups = require("colorbuddy.init").groups
  local styles = require("colorbuddy.init").styles
  local link = require("vitesse.utils").highlight_link

  -- diagnostics
  Group.new("DiagnosticError", colors.Error)
  Group.new("DiagnosticWarn", colors.Warn)
  Group.new("DiagnosticInfo", colors.Info)
  Group.new("DiagnosticHint", colors.Hint)
  -- NOTE: `styles.strikethrough` not working
  Group.new("DiagnosticDeprecated", groups.Comment, colors.none, styles.italic + styles.underline)
  Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.underline)
  Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.underline)
  Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.underline)
  Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.underline)

  Group.link("DiagnosticVirtualTextError", groups.DiagnosticError)
  Group.link("DiagnosticVirtualTextWarn", groups.DiagnosticWarn)
  Group.link("DiagnosticVirtualTextInfo", groups.DiagnosticInfo)
  Group.link("DiagnosticVirtualTextHint", groups.DiagnosticHint)
  if diagnostic_virtual_text_background then
    Group.new("DiagnosticVirtualTextError", groups.DiagnosticVirtualTextError, colors.Error:dark():dark():dark():dark())
    Group.new(
      "DiagnosticVirtualTextWarn",
      groups.DiagnosticVirtualTextWarn,
      colors.Warn:dark():dark():dark():dark():dark()
    )
    Group.new("DiagnosticVirtualTextInfo", groups.DiagnosticVirtualTextInfo, colors.Info:dark():dark():dark():dark())
    Group.new("DiagnosticVirtualTextHint", groups.DiagnosticVirtualTextHint, colors.Hint:dark():dark():dark())
  end

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
  link("@lsp.type.operator", "@operator")
  link("@lsp.type.escapeSequence", "@string.escape")
  link("@lsp.type.formatSpecifier", "@punctuation.special")
  link("@lsp.type.selfKeyword", "@variable.builtin")
  link("@lsp.typemod.enum.defaultLibrary", "@type.builtin")
  link("@lsp.typemod.enumMember.defaultLibrary", "@constant.builtin")
  link("@lsp.typemod.function.defaultLibrary", "@function.builtin")
end
