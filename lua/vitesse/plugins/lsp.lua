return function(_)
  local link = require("vitesse.utils").highlight_link

  -- lsp semantic tokens
  link("@lsp.type.comment", "@comment")
  link("@lsp.type.enum", "@type")
  link("@lsp.type.macro", "@constant")
  link("@lsp.type.parameter", "@parameter")
  link("@lsp.type.variable", "@variable")
end
