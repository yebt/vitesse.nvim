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

## Notice

**This colorscheme may not perfect because I do not know Vim configurations, I only forked [srvana/neosolarized.nvim](https://github.com/svrana/neosolarized.nvim) and change the colors.**

## Limitations

- Requires neovim 0.8.0+
- Vitesse dark only
- Transparent friendly
- Not 100% same as [vscode-theme-vitesse](https://github.com/antfu/vscode-theme-vitesse)
- Use [vitesse.iterm](https://github.com/2nthony/vitesse.iterm) or change your terminal background to `#121212` (vitesse dark background)

## Usage

Lazy.nvim:

```lua
require("lazy").setup {
  "2nthony/vitesse.nvim",
  dependencies = {
    "tjdevries/colorbuddy.nvim"
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
  transparnet_background = true,
  transparent_float_background = true, -- aka pum(popup menu) background
  reverse_visual = false,
  dim_nc = false,
}
```

Recommended vim options for transparent:

```lua
vim.opt.winblend = 0
vim.opt.pumblend = 0
```

## Plugin support

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

## Thanks

- [antfu/vscode-theme-vitesse](https://github.com/antfu/vscode-theme-vitesse)
- [srvana/neosolarized.nvim](https://github.com/svrana/neosolarized.nvim) modified, for more details you may need to check.
