local colors = require("colorbuddy.init").colors
local Group = require("colorbuddy.init").Group
local groups = require("colorbuddy.init").groups
local styles = require("colorbuddy.init").styles

-- old
Group.new("LspSagaCodeActionTitle", colors.green)
Group.new("LspSagaBorderTitle", colors.yellow, colors.none, styles.bold)
Group.new("LspSagaDiagnosticHeader", colors.yellow)
Group.new("LspSagaShTruncateLine", colors.black1)
Group.new("LspSagaDocTruncateLine", colors.black1)
Group.new("LspSagaCodeActionTruncateLine", colors.black1)
Group.new("LspSagaHoverBorder", groups.FloatBorder)
Group.new("LspSagaRenameBorder", groups.LspSagaHoverBorder)
Group.new("LSPSagaDiagnosticBorder", groups.LspSagaHoverBorder)
Group.new("LspSagaSignatureHelpBorder", groups.LspSagaHoverBorder)
Group.new("LspSagaCodeActionBorder", groups.LspSagaHoverBorder)
Group.new("LspSagaLspFinderBorder", groups.LspSagaHoverBorder)
Group.new("LspSagaFloatWinBorder", groups.LspSagaHoverBorder)
Group.new("LspSagaSignatureHelpBorder", groups.LspSagaHoverBorder)
Group.new("LspSagaDefPreviewBorder", groups.LspSagaHoverBorder)
Group.new("LspSagaAutoPreviewBorder", groups.LspSagaHoverBorder)
Group.new("LspSagaFinderSelection", colors.green, colors.none, styles.bold)

Group.new("LspFloatWinBorder", groups.LspSagaHoverBorder)
Group.new("LspLinesDiagBorder", groups.LspSagaHoverBorder)
