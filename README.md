# everblush.nvim

everblush.nvim is a beautiful, dark and cleaner colorscheme based in the colorscheme showed in the rxyhn dotfiles

> ** IMPORTANT NOTE **: You need the latest version of neovim to use this, because this is totally written in lua!

## Screenshots

![demonstration](./misc/demonstration.png)

## External Plugin Support

- Telescope
- Nvim Tree
- Tresitter
- Lsp
- Lsp saga
- Coc
- Bufferline
- Illuminate
- Diff
- Git signs
- Git gutter
- Lualine
- Ident-BlankLine

## Installation

You can install this plugin with packer:

```lua
use { 'Everblush/everblush.nvim', as = 'everblush' }
```

Or with vim-plug:

```vim
Plug 'Everblush/everblush.nvim', { 'as': 'everblush' }
```

## Active theme

To active the theme call this in your neovim config:

```lua
local everblush = require('everblush')

everblush.setup({ nvim_tree = { contrast = true } }) -- or use contrast = false to not apply contrast
```

Or with vim script:

```vim
colorscheme everblush
```

> It will set automatically the `vim.opt.termguicolors` to true

## Activating lualine theme

Place this in your lualine config:

```lua
local lualine = require('lualine')

lualine.setup {
  options = {
    theme = 'everblush',
  },
}
```

## Using the core to get the colors

If you want to get the colors into a lua dictionary

```lua
local everblush = require('everblush.core')
local colors = everblush.get_colors()
```
