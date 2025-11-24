# My Dotfiles

Personal configuration files for my development environment.

## Tools Configured

- 🐟 **Fish Shell** - Modern shell with great defaults
- 👻 **Ghostty** - Fast, native terminal emulator
- 📚 **Atuin** - Magical shell history
- ⭐ **Starship** - Minimal, fast prompt
- 📝 **Zed** - High-performance code editor
- 🐙 **Git** - Version control
- 🔧 **GitHub CLI** - GitHub from the command line

## Installation

### Prerequisites

Install required tools first:

```fish
brew install fish ghostty starship atuin gh git ripgrep
```

Quick Setup

1. Clone this repository:

```fish
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
```

2. Run the install script:

```fish
chmod +x install.fish
./install.fish
```

3. Set fish as default shell:

```fish
chsh -s (which fish)
```

## Manual Installation

If you prefer manual setup, create symlinks:

```fish
ln -sf ~/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/dotfiles/.config/starship.toml ~/.config/starship.toml
# ... etc
```

## Updating Dotfiles

After making changes on your system, collect them back:

```fish
./collect.fish
git add .
git commit -m "Update configs"
git push
```
