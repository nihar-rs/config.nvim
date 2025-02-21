## Neovim Dotfiles
Welcome to my Neovim configuration repository! This repository contains my personal setup for Neovim, below, you'll find details about the features, plugins, and instructions to setup this configuration on your machine(Maynot actually work on your machine!).

---

## Table of Contents

- [Features](#git_#autocompletion_#lsp_#fuzzyfinding_#syntaxhighlighting)
- [Requirements](#nvim_0.10_#ripgrep_#git)
- [Plugins Included](#Lazy_#alpha_#autopairs_#comment_#gitsigns_#harpoon_#indent_line_#lualine_#neo-tree_#oil_#telescope_#to-do_comment_#treesitter_#trouble_#undo-tree)
- [License](#license)

---

## Features

- Fully modular Neovim setup. 
- Integrated support for:
  - LSP (Language Server Protocol) for better coding assistance.
  - Treesitter for advanced syntax highlighting.
  - Git integration for streamlined version control.
- Lightweight and performance-focused configuration.
- Custom keybindings to improve workflow.

---

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/nihar-rs/config.nvim.git ~/.config/nvim --depth 1
   ```

2. **Install Dependencies**

   Ensure the following are installed on your system:
   - Neovim (v0.10 or later)
   - `git` for plugin management
   - A package manager such as [Lazy](https://github.com/folke/lazy.nvim)

3. **Install Plugins**

   Open Neovim and run:
   ```vim
   :Lazy
   ```

4. **Restart Neovim**

   Restart Neovim to load the configuration.

---

## Configuration Overview

The configuration is divided into modular files under the `lua` and `after` directories for better organization:

---

## Plugins Included

Here are some of the key plugins included in this configuration:

- **Lazy**: Plugin manager for Neovim.
- **Telescope**: Fuzzy finder for files, text, and more.
- **nvim-treesitter**: Advanced syntax highlighting and code navigation.
- **lualine**: A customizable status line.
- **nvim-lspconfig**: Easy configuration for LSP support.
- **gitsigns.nvim**: Git integration for signs and hunk actions.
- **harpoon**: For easy navigation between project files.

For a complete list, check the `lua/plugins/` directory.

---

## License

This configuration is licensed under the MIT License.

