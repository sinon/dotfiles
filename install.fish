#!/usr/bin/env fish
# Install dotfiles by creating symlinks

set DOTFILES_DIR (pwd)

echo "🚀 Installing dotfiles from $DOTFILES_DIR"

# Fish shell configs
echo "→ Installing fish configs..."
mkdir -p ~/.config/fish
ln -sf "$DOTFILES_DIR/.config/fish/config.fish" ~/.config/fish/config.fish
test -d "$DOTFILES_DIR/.config/fish/functions" && ln -sf "$DOTFILES_DIR/.config/fish/functions" ~/.config/fish/functions
test -d "$DOTFILES_DIR/.config/fish/conf.d" && ln -sf "$DOTFILES_DIR/.config/fish/conf.d" ~/.config/fish/conf.d

# Starship prompt
echo "→ Installing starship config..."
mkdir -p ~/.config
ln -sf "$DOTFILES_DIR/.config/starship.toml" ~/.config/starship.toml

# Ghostty terminal
echo "→ Installing ghostty config..."
mkdir -p ~/.config/ghostty
ln -sf "$DOTFILES_DIR/.config/ghostty" ~/.config/ghostty

# Atuin history
echo "→ Installing atuin config..."
mkdir -p ~/.config/atuin
test -f "$DOTFILES_DIR/.config/atuin/config.toml" && ln -sf "$DOTFILES_DIR/.config/atuin/config.toml" ~/.config/atuin/config.toml

# GitHub CLI
echo "→ Installing gh config..."
mkdir -p ~/.config/gh
test -f "$DOTFILES_DIR/.config/gh/config.yml" && ln -sf "$DOTFILES_DIR/.config/gh/config.yml" ~/.config/gh/config.yml

# Zed editor
echo "→ Installing zed config..."
mkdir -p ~/.config/zed
ln -sf "$DOTFILES_DIR/.config/zed/settings.json" ~/.config/zed/settings.json

# Git configs
echo "→ Installing git configs..."
test -f "$DOTFILES_DIR/git/.gitconfig" && ln -sf "$DOTFILES_DIR/git/.gitconfig" ~/.gitconfig
test -f "$DOTFILES_DIR/git/.gitignore_global" && ln -sf "$DOTFILES_DIR/git/.gitignore_global" ~/.gitignore_global

echo "✓ Installation complete!"
echo "🐟 Restart fish or run 'source ~/.config/fish/config.fish'"
