# config.nvim

Personal Neovim configuration

## Directories

### Windows

Config: `~/AppData/Local/nvim`
Data: `~/AppData/Local/nvim-data`

### Mac OS

Config: `~/.config/nvim`
Data: `~/.local/share/nvim`

## Features

- lazy package manager
- mini.nvim status line
- tokionight theme
- basic lua settings
- telescope.nvim
- nvim-lspconfig
- mason, mason-lspconfig and mason tool installer
- blink.cmp for completions

## Todo

- Telescope fzf configuration (see https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- LSP configuration for
  - typescript & react
  - rust
- Investigate [mini.files](https://github.com/echasnovski/mini.files) as a replacement for Oil

## Use cases

- Typescript & React for web
- Rust for desktop and server
- C# and dotnet for desktop and servers
- Lua for neovim configuration

## Dependencies

### LSP

- [Luals](https://luals.github.io/#neovim-install)

### Telescope

- [Telescope FZF Native](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [CMake](https://cmake.org/download/)
- [fd](https://github.com/sharkdp/fd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

### Colour Scheme

- [Kanagawa](https://github.com/rebelot/kanagawa.nvim) (currently active)
- [Tokyonight](https://github.com/folke/tokyonight.nvim)
