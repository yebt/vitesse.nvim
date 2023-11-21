<h1 align="center">Vitesse theme for NeoVIM</h1>

![](https://cdn.jsdelivr.net/gh/2nthony/statics@main/uPic/5LS1HW5NjR0q.png)

<p align="center">
  <sub>
    <samp>
      <a href="https://iterm2.com/">iTerm 2</a> •
      <a href="https://www.nerdfonts.com/">Hack Nerd Font</a>
    </samp>
  </sub>
</p>

<details><summary>More screenshots</summary>

![](https://cdn.jsdelivr.net/gh/2nthony/statics@main/uPic/mTzAiuZkQmGR.png)
![](https://cdn.jsdelivr.net/gh/2nthony/statics@main/uPic/BquUsEgy1vzV.png)
![](https://cdn.jsdelivr.net/gh/2nthony/statics@main/uPic/qsBrvgVlz5FF.png)
![](https://cdn.jsdelivr.net/gh/2nthony/statics@main/uPic/FNMvsuIE7Nk3.png)
![](https://cdn.jsdelivr.net/gh/2nthony/statics@main/uPic/YvWaUlskqZvp.png)
![](https://cdn.jsdelivr.net/gh/2nthony/statics@main/uPic/Eg1IzFGiqJ4i.png)

</details>

## Notice

**This colorscheme may not perfect because I do not know Vim configurations, I only forked [srvana/neosolarized.nvim](https://github.com/svrana/neosolarized.nvim) and change the colors.**

## Limitations

- Requires neovim 0.8.0+ , nvim-treesitter latest
- Vitesse dark only
- Transparent friendly
- Not 100% same as [vscode-theme-vitesse](https://github.com/antfu/vscode-theme-vitesse)
- Use [vitesse.iterm](https://github.com/2nthony/vitesse.iterm) or change your terminal background to `#121212` (vitesse dark background)
- Lazy to update...

## Usage

```vim
colorscheme vitesse
```

Lazy.nvim:

```lua
require("lazy").setup {
  {
    "2nthony/vitesse.nvim",
    dependencies = {
      "tjdevries/colorbuddy.nvim"
    },
  }
}
```

Packer:

```lua
use {
  "2nthony/vitesse.nvim",
  requires = {
    "tjdevries/colorbuddy.nvim"
  }
}
```

Lualine:

```lua
require("lualine").setup {
  options = {
    theme = "vitesse",
  }
}
```

Setup with defaults:

```lua
require("vitesse").setup {
  comment_italics = true,
  transparent_background = true,
  transparent_float_background = true, -- aka pum(popup menu) background
  reverse_visual = false,
  dim_nc = false,
  cmp_cmdline_disable_search_highlight_group = false, -- disable search highlight group for cmp item
  -- if `transparent_float_background` false, make telescope border color same as float background
  telescope_border_follow_float_background = false,
  -- diagnostic virtual text background, like error lens
  diagnostic_virtual_text_background = false,

  -- override the `lua/vitesse/palette.lua`, go to file see fields
  colors = {},
  themes = {},
}
```

Recommended vim options for transparent:

```lua
vim.opt.winblend = 0
vim.opt.pumblend = 0
```

## Extra features

<details><summary>⛰️ Slant tab</summary>

![](https://cdn.jsdelivr.net/gh/2nthony/statics@main/uPic/sUrBU2Hu7h7U.png)

Usage:

```lua
local slant = require("vitesse.features.bufferline.slant")

-- you can override or customize
-- slant.highlights.buffer_selected.bold = false

require("bufferline").setup {
  options = {
    separator_style = "slant",
  },
  highlights = slant.highlights,
}
```

</details>

## Plugin support

- bufferline
- lualine
- nvim-cmp
- lspsaga
- telescope
- sindrets/diffview
- lewis6991/gitsigns.nvim
- folke/noice.nvim
- neo-tree.nvim
- alpha-nvim
- mini.indentscope
- nvim-tree
- folke/whichkey.nvim
- vim-illuminate
- indent-blankline.nvim

## Thanks

- [antfu/vscode-theme-vitesse](https://github.com/antfu/vscode-theme-vitesse)
- [srvana/neosolarized.nvim](https://github.com/svrana/neosolarized.nvim) modified, for more details you may need to check.
