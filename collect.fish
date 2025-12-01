#!/usr/bin/env fish
# Collect dotfiles from home directory to this repo

set DOTFILES_DIR (pwd)

echo "🔍 Collecting dotfiles to $DOTFILES_DIR"

# Fish shell configs
echo "→ Collecting fish configs..."
mkdir -p "$DOTFILES_DIR/.config/fish"
cp -r ~/.config/fish/config.fish "$DOTFILES_DIR/.config/fish/" 2>/dev/null
cp -r ~/.config/fish/functions "$DOTFILES_DIR/.config/fish/" 2>/dev/null
cp -r ~/.config/fish/conf.d "$DOTFILES_DIR/.config/fish/" 2>/dev/null

# Ghostty terminal
echo "→ Collecting ghostty config..."
mkdir -p "$DOTFILES_DIR/.config/ghostty"
cp -r ~/.config/ghostty/* "$DOTFILES_DIR/.config/ghostty/" 2>/dev/null

echo "→ Collecting bat config..."
mkdir -p "$DOTFILES_DIR/.config/bat"
cp -r ~/.config/bat/config "$DOTFILES_DIR/.config/bat/config" 2>/dev/null

# Atuin shell history
echo "→ Collecting atuin config..."
mkdir -p "$DOTFILES_DIR/.config/atuin"
cp ~/.config/atuin/config.toml "$DOTFILES_DIR/.config/atuin/" 2>/dev/null

# GitHub CLI (careful with tokens!)
echo "→ Collecting gh config..."
mkdir -p "$DOTFILES_DIR/.config/gh"
cp ~/.config/gh/config.yml "$DOTFILES_DIR/.config/gh/" 2>/dev/null
# Skip hosts.yml as it contains tokens

# Git configs
echo "→ Collecting git configs..."
mkdir -p "$DOTFILES_DIR/git"
cp ~/.gitconfig "$DOTFILES_DIR/git/.gitconfig" 2>/dev/null
cp ~/.gitignore_global "$DOTFILES_DIR/git/.gitignore_global" 2>/dev/null

echo "✓ Collection complete!"
echo "⚠️  Review files before committing - check for sensitive data!"
