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
- snacks.nvim
- typescript-tools for improved language server support

## Installation - Windows

### Windows Directories

Config: `~/AppData/Local/nvim`
Data: `~/AppData/Local/nvim-data`

### Install Zig (or a C compiler)

```
winget install zig.zig
```

OR

```
winget install Kitware.cmake
```

### Install ripgrep

[ripgrep GitHub repo](https://github.com/BurntSushi/ripgrep)

```
winget install BurntSushi.ripgrep.MSVC
```

### Install fd

[fd GitHub repo](https://github.com/sharkdp/fd)

```
winget install sharkdp.fd
```

### Install ImageMagick

```
winget install ImageMagick.Q16-HDRI
```

### Clone neovim configuration

```
cd $env:USERPROFILE\AppData\Local
git clone https://github.com/cjonesuk/config.nvim nvim
cd nvim
nvim .
```

## Installation - Mac OS

### Mac OS Directories

Config: `~/.config/nvim`
Data: `~/.local/share/nvim`

TODO: Installation steps

## Todo

- C# LSP and tooling
- Investigate debugging setup

## Dependencies

### Tooling

- [Lazygit](https://github.com/jesseduffield/lazygit)

### LSP

- [Luals](https://luals.github.io/#neovim-install)

### Colour Scheme

- [Kanagawa](https://github.com/rebelot/kanagawa.nvim)
