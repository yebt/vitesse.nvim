return function(_)
  local link = require("vitesse.utils").highlight_link

  link("@lsp.type.comment", "@comment")
  link("@lsp.type.enum", "@type")
  link("@lsp.type.property", "@property")
  link("@lsp.type.macro", "@constant")
  link("@lsp.typemod.method.defaultLibrary", "@method")
  link("@lsp.typemod.function.defaultLibrary", "@function")
  link("@lsp.typemod.variable.defaultLibrary", "@variable")
end
