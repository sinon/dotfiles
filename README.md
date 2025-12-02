# My Dotfiles

Personal configuration files managed with [chezmoi](https://www.chezmoi.io/).

## Tools Configured

- 🐟 **Fish Shell** - Modern shell with great defaults
- 👻 **Ghostty** - Fast, native terminal emulator
- 📚 **Atuin** - Magical shell history
- ⭐ **Starship** - Minimal, fast prompt
- 📝 **Zed** - High-performance code editor
- 🦇 **Bat** - A cat clone with wings
- 🐙 **Git** - Version control (with delta & difftastic)
- 🔧 **GitHub CLI** - GitHub from the command line

## Quick Start

### Prerequisites

Install chezmoi and required tools:

```fish
brew install chezmoi fish ghostty starship atuin gh git ripgrep bat delta difftastic
```

## One-Line Install

```fish
chezmoi init --apply sinon
```

This will:

1. Clone this repo to `~/.local/share/chezmoi`
2. Prompt for your name, email, and GPG signing key
3. Apply all configurations to your home directory

````

## Usage

### View Pending Changes

```fish
chezmoi diff
```

### Apply Changes

```fish
chezmoi apply
```

### Edit a Config File

```fish
# Edit the source file and apply changes
chezmoi edit ~/.config/fish/config.fish

# Or edit and apply in one step
chezmoi edit --apply ~/.config/fish/config.fish
```

### Add a New Dotfile

```fish
chezmoi add ~/.config/some-app/config.toml
```

### Update After Editing Outside chezmoi

If you edited a file directly (not via `chezmoi edit`):

```fish
chezmoi re-add ~/.config/fish/config.fish
```

### Pull Latest Changes

```fish
chezmoi update
```

## Configuration

On first run, chezmoi will prompt for:

| Variable     | Description           | Example            |
| ------------ | --------------------- | ------------------ |
| `email`      | Git commit email      | `you@example.com`  |
| `name`       | Git commit name       | `Your Name`        |
| `signingkey` | GPG key ID (optional) | `8B0BA7243355B005` |

To reconfigure these values:

```fish
chezmoi init
```

## Structure

```
~/.local/share/chezmoi/
├── .chezmoi.toml.tmpl     # Configuration template
├── dot_config/
│   ├── private_fish/      # Fish shell config
│   ├── private_atuin/     # Atuin config
│   ├── ghostty/           # Ghostty terminal
│   ├── starship.toml      # Starship prompt
│   ├── bat/               # Bat config
│   ├── gh/                # GitHub CLI
│   └── zed/               # Zed editor
├── dot_gitconfig.tmpl     # Git config (templated)
└── dot_gitignore          # Global gitignore
```

## License

MIT
````
