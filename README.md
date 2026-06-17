# MyNvimConfig

A personal Neovim configuration written in Lua, focused on a fast, modern editing experience with sensible defaults, plugin-based tooling, and a retro-inspired visual style.

## Overview

This repository contains a modular Neovim setup organized around a few core areas:

- **Editor settings** for general behavior and usability
- **Keymaps** for shortcuts and workflow improvements
- **Plugins** for navigation, formatting, completion, Git integration, and terminal workflows
- **LSP configuration** for language-aware development
- **Custom theme/plugin code** under `lua/turboc`

The configuration uses Lua throughout and is structured to keep the main entry point small while splitting behavior into focused modules.

## Structure

```text
.
├── init.lua
├── nvim-pack-lock.json
├── lua/
│   ├── lsp/
│   │   └── init.lua
│   ├── plugins/
│   │   └── init.lua
│   ├── settings/
│   │   ├── keymaps.lua
│   │   └── options.lua
│   └── turboc/
│       ├── colors/
│       └── init.lua
└── colors/
```

## Features

### Core editing
- Lua-based Neovim configuration
- Modular layout for easier maintenance
- Centralized options and keymaps

### Developer experience
- **LSP support** via `nvim-lspconfig`
- **Completion** via `coq_nvim`
- **Syntax parsing** via `nvim-treesitter`
- **Formatting on save** via `conform.nvim`

### Navigation and file management
- **Oil** as the default file explorer
- **nvim-tree** for tree-based navigation
- **fzf-lua** for fuzzy finding

### Workflow tools
- **toggleterm.nvim** for integrated terminal usage
- **code_runner.nvim** for quick file execution
- **diffview.nvim** for Git diff review
- **oil-git.nvim** and **oil-git-status.nvim** for Git-aware file browsing

### Visuals
- Icon support through `mini.icons` and `nvim-web-devicons`
- Multiple retro-inspired colorschemes
- Custom `turboc` module for theme-related customization

## Included plugins

The current setup includes plugins in these categories:

- Editing and formatting
  - `nvim-treesitter`
  - `autoclose.nvim`
  - `coq_nvim`
  - `conform.nvim`
  - `nvim-lspconfig`
- Workflow and execution
  - `code_runner.nvim`
  - `toggleterm.nvim`
- Navigation and UI
  - `which-key.nvim`
  - `oil.nvim`
  - `fzf-lua`
  - `nvim-tree.lua`
  - `diffview.nvim`
- Git integration
  - `oil-git.nvim`
  - `oil-git-status.nvim`
- Visual enhancements and themes
  - `mini.icons`
  - `nvim-web-devicons`
  - `c64-vim-color-scheme`
  - `vim-colors-modern-borland`
  - `borlandp.vim`
  - `turboc.nvim`

## Formatting and language support

Current formatter configuration includes:

- **Lua** → `stylua`
- **JavaScript** → `prettier`

LSP configuration is currently minimal and includes an initial `rust_analyzer` setup, making this a good base for expanding language-specific tooling over time.

## Getting started

### Prerequisites

Make sure you have:

- **Neovim** with Lua support
- Git
- Any external formatter/runtime tools you want to use, such as:
  - `stylua`
  - `prettier`
  - `node`
  - `deno`

### Installation

1. Back up your current Neovim config if needed.
2. Clone this repository into your Neovim configuration directory.
3. Start Neovim and allow plugins to install/load.
4. Install any required external tools for formatting or code execution.

Example config location on Linux/macOS:

```bash
git clone https://github.com/GDev91/MyNvimConfig ~/.config/nvim
```

Example config location on Windows:

```powershell
git clone https://github.com/GDev91/MyNvimConfig $env:LOCALAPPDATA\nvim
```

## Notes

- This is a personal configuration and will likely evolve over time.
- Some modules, especially under `lua/turboc`, appear to be custom or experimental.
- Plugin versions are locked in `nvim-pack-lock.json` for more reproducible setups.

## Roadmap ideas

Potential future improvements:

- Expand LSP coverage for more languages
- Add plugin screenshots or demos
- Document keybindings in detail
- Add installation notes for external dependencies
- Split plugin config into per-plugin files as the setup grows

## License

No license is currently specified for this repository.
