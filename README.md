# config.nvim

Personal Neovim configuration

## Use cases

- Typescript & React for web
- Rust for desktop and server
- C# and dotnet for desktop and servers
- Lua for neovim configuration

## Features

- lazy package manager
- mini.nvim: status line, ai (for improved text objects) and move
- kanagawa theme
- basic lua settings
- telescope.nvim
- nvim-lspconfig
- mason, mason-lspconfig and mason tool installer
- blink.cmp for completions
- snacks.nvim (currently layygit integration)
- typescript-tools for improved language server support

## Installation - Windows

### Install Zig (or a C compiler)

```
winget install zig.zig
```

### Install ImageMagick

```
winget install ImageMagick.Q16-HDRI
```

### Clone neovim configuration

```PowerShell
cd $env:USERPROFILE\AppData\Local
git clone https://github.com/cjonesuk/config.nvim nvim
cd nvim
nvim .
```

## Todo

- Investigate debugging setup

## Dependencies

### Tooling

- [Lazygit](https://github.com/jesseduffield/lazygit)

### LSP

- [Luals](https://luals.github.io/#neovim-install)

### Telescope

- [Telescope FZF Native](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [CMake](https://cmake.org/download/)
- [fd](https://github.com/sharkdp/fd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

### Colour Scheme

- [Kanagawa](https://github.com/rebelot/kanagawa.nvim) (currently active)

## Directories

### Windows

Config: `~/AppData/Local/nvim`
Data: `~/AppData/Local/nvim-data`

### Mac OS

Config: `~/.config/nvim`
Data: `~/.local/share/nvim`
