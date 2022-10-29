# Auro Development Environment

## Terminal Setup
✍🏼 Blog Post Step-by-Step Guide: [How To Setup Your Mac Terminal](https://josean.com/posts/terminal-setup)

📹 Youtube Guide: [How To Make Your Boring Mac Terminal So Much Better](https://www.youtube.com/watch?v=CF1tMjvHDRA&list=PLnu5gT9QrFg36OehOdECFvxFFeMHhb_07&index=2&t=479s)

### Relevant Files
- [.zshrc](.zshrc) - Zsh Shell Configuration
- [auro.itermcolors](auro.itermcolors) - iTerm2 Color Scheme

## Neovim Setup
📹 Youtube Step-by-Step Guide: [How I Setup Neovim On My Mac To Make It Amazing](https://youtu.be/vdn_pKJUda8)

### Requires
- True Color Terminal Like: [iTerm2](https://iterm2.com/)
- [Neovim](https://neovim.io/) (Version 0.8 or Later)
- [Nerd Font](https://www.nerdfonts.com/) - I use Meslo Nerd Font
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder

If you're on mac, like me, you can install iTerm2, Neovim and Ripgrep with homebrew.
```bash
brew install --cask iterm2
```
```bash
brew install neovim
```
```bash
brew install ripgrep
```
### Relevant Files
- [nvim](nvim)

## Plugins
#### Plugin Manager
- [wbthomason/packer](https://github.com/wbthomason/packer.nvim) - Popular plugin manager

#### Dependency For Other Plugins
- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

#### Preferred Colorscheme
- [catppuccin/nvim](https://github.com/catppuccin/nvim)

#### Navigating Between Neovim Windows and Tmux
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

#### Essentials
- [tpope/vim-surround](https://github.com/tpope/vim-surround) - manipulate surroundings with "ys", "ds", and "cs"
- [vim-scripts/ReplaceWithRegister](https://github.com/vim-scripts/ReplaceWithRegister) - replace things with register with "gr"
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - toggle comments with "gc"

#### File Explorer
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)

#### VS Code Like Icons
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)

#### Status Line
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

#### Fuzzy Finder
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Dependency for better performance
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder

