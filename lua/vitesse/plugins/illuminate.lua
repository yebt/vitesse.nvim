return function(_)
  local colors = require("colorbuddy.init").colors
  local Group = require("colorbuddy.init").Group
  local link = require("vitesse.utils").highlight_link

  Group.new("IlluminatedWord", colors.none, colors.ignored)
  link("IlluminatedCurWord", "IlluminatedWord")
  link("IlluminatedWordText", "IlluminatedWord")
  link("IlluminatedWordRead", "IlluminatedWord")
  link("IlluminatedWordWrite", "IlluminatedWord")
end
