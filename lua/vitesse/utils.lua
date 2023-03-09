local utils = {}

utils.highlight_link = function(group, link)
  vim.api.nvim_set_hl(0, group, { link = link })
end

return utils
