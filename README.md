<div align="center">
    <img src="https://raw.githubusercontent.com/Everblush/assets/main/logo.png" height="200px" width="200px" alt="logo" />
</div>

<h1 align="center">Everblush for <a href="https://github.com/neovim/neovim">Neovim</a></h1>

<h4 align="center"><i>A dark, vibrant, and beautiful color scheme for Neovim</i></h4>

<p align="center">
    <a href="https://github.com/Everblush/nvim/stars"><img src="https://img.shields.io/github/stars/Everblush/nvim?color=e57474&labelColor=1e2528&style=for-the-badge"></a>
    <a href="https://github.com/Everblush/nvim/issues"><img src="https://img.shields.io/github/issues/Everblush/nvim?color=67b0e8&labelColor=1e2528&style=for-the-badge"></a>
    <a href="https://github.com/Everblush/nvim/blob/main/LICENSE"><img src="https://img.shields.io/static/v1?label=license&message=MIT&color=8ccf7e&labelColor=1e2528&style=for-the-badge"></a>
    <a href="https://github.com/Everblush/nvim/network/members"><img src="https://img.shields.io/github/forks/Everblush/nvim?color=e5c76b&labelColor=1e2528&style=for-the-badge"></a>
</p>

## Preview

<div align="center">
    <img width="700px" height="500px" src="https://github.com/Everblush/assets/blob/main/nvim/nvim-output.png"> 
</div>

<details>
    <summary>More screenshots</summary>
    <h4>Bash</h4>
    <div align="center">
        <img align="center" width="700px" height="500px" src="https://github.com/Everblush/assets/blob/main/nvim/nvim-shell.png?raw=true" />
    </div>
    <h4>Rust</h4>
    <div align="center">
        <img align="center" width="700px" height="500px" src="https://github.com/Everblush/assets/blob/main/nvim/nvim-rust.png?raw=true" />
    </div>
    <h4>Go</h4>
    <div align="center">
        <img align="center" width="700px" height="500px" src="https://github.com/Everblush/assets/blob/main/nvim/nvim-go.png?raw=true" />
    </div>
    <h4>CSS</h4>
    <div align="center">
        <img align="center" width="700px" height="500px" src="https://github.com/Everblush/assets/blob/main/nvim/nvim-css.png?raw=true" />
    </div>
</details>

## Installation

### Neovim (0.8+)

<details open>
    <summary><h4><a href='https://neovim.io/doc/user/usr_05.html#05.5'>Neovim packages</a></h4></summary>

If not already present, create the plugins directory as follows:<br>
```sh
mkdir -p $HOME/.config/nvim/pack/plugins/start
```

Clone this repository to the plugins directory as follows:<br>
```sh
git clone --depth=1 https://github.com/Everblush/nvim $HOME/.config/nvim/pack/plugins/start/everblush/
```
</details>

<details open>
    <summary><h4><a href='https://github.com/wbthomason/packer.nvim'>packer.nvim</a></h4></summary>

Add the following lines to the `init.lua` file in the `packer` setup function:<br>
```lua
{ 'Everblush/nvim', as = 'everblush' }
```
</details>

<details open>
    <summary><h4><a href='https://github.com/folke/lazy.nvim'>lazy.nvim</a></h4></summary>

Add the following lines to the `init.lua` file in the `lazy` setup function:<br>
```lua
{ 'Everblush/nvim', name = 'everblush' }
```
</details>

### Vim (8.2+)

<details open>
    <summary><h4><a href='https://vimhelp.org/repeat.txt.html#packages'>Vim packages</a></h4></summary>

If not already present, create the plugins directory as follows:<br>
```sh
mkdir -p $HOME/.vim/pack/plugins/start
```

Clone this repository to the plugins directory as follows:<br>
```sh
git clone --depth=1 https://github.com/Everblush/nvim $HOME/.vim/pack/plugins/start/everblush/
```
</details>

<details open>
    <summary><h4><a href='https://github.com/junegunn/vim-plug'>vim-plug</a></h4></summary>

Add the line `Plug Everblush/nvim` to your `vimrc` and install using the command `:PlugInstall`.
</details>

<details open>
    <summary><h4><a href='https://github.com/tpope/vim-pathogen'>vim-pathogen</a></h4></summary>

Clone the repository to your `RUNTIMEPATH` as follows:<br>
```sh
git clone --depth=1 https://github.com/Everblush/nvim $HOME/.vim/bundle/everblush/
```

Alternatively, add this repository as a `git` sub-module as follows:<br>
```sh
git submodule add git@github.com:Everblush/nvim.git $HOME/.vim/bundle/everblush/
```
</details>

<details open>
    <summary><h4><a href='https://github.com/VundleVim/Vundle.vim'>Vundle</a></h4></summary>

Add the line `Plugin Everblush/nvim` to your `vimrc` and install using the command `:PluginInstall`.
</details>

## Usage

### Lua

Add this line to your `init.lua` file:<br>
```lua
vim.cmd('colorscheme everblush')
```

### Vimscript

Add this line to your `init.vim` file (for Neovim) or `.vimrc` (for Vim):<br>
```vim
colorscheme everblush
```

## Configuration

The default options shown below are automatically set when the colorscheme is applied. Refer to the examples for sample configuration changes, and add them to the `init.lua` file.<br>

```lua
require('everblush').setup({

    -- Default options
    override = {},
    transparent_background = false,
    nvim_tree = {
        contrast = false,
    },

    -- Configuration examples

    -- Override the default highlights using Everblush or other colors
    override = {
        Normal = { fg = '#ffffff', bg = 'comment' },
    },

    -- Set transparent background
    transparent_background = true,

    -- Set contrast for nvim-tree highlights
    nvim_tree = {
        contrast = true,
    },
})
```

## Integrations

### [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

**Lua**
```lua
require('lualine').setup({
    options = { 'theme' = 'everblush' }
})
```
**VimScript**
```vim
lua << EOF
require('lualine').setup({
    options = { 'theme' = 'everblush' }
})
EOF
```

### [lightline.vim](https://github.com/itchyny/lightline.vim)

**Lua**
```lua
vim.g.lightline = {
    'colorscheme' = 'everblush',
}
```

**Vimscript**
```vim
let g:lightline = {'colorscheme': 'everblush'}
```

### [vim-airline](https://github.com/vim-airline/vim-airline)

**Lua**
```lua
vim.g.airline_theme = 'everblush'
vim.g.airline_powerline_fonts = 1 -- For powerline symbols in statusline
vim.g['airline#extensions#tabline#enabled'] = 1 -- To enable custom tabline
```

**Vimscript**
```vim
let g:airline_theme = 'everblush'
let g:airline_powerline_fonts = 1 " For powerline symbols in statusline
let g:airline#extensions#tabline#enabled = 1 " To enable custom tabline
```

### Other integrations

- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [neogit](https://github.com/TimUntersberger/neogit)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)

## Credits

- [AlphaTechnolog](https://github.com/AlphaTechnolog)
- [Mangeshrex](https://github.com/Mangeshrex)
- [Prateek](https://github.com/prateektade)
