set -gx fish_greeting ''

set -gx HOMEBREW_BAT 1
set -gx HOMEBREW_NO_AUTO_UPDATE 1
set -gx HOMEBREW_BUILD_FROM_SOURCE 0
set -gx HOMEBREW_NO_EMOJI 1
set -gx HOMEBREW_NO_ANALYTICS 1

set -gx RIPGREP_CONFIG_PATH ~/.config/.ripgreprc

set -gx XDG_CONFIG_HOME $HOME/.config

zoxide init fish | source
if status is-interactive
    # Commands to run in interactive sessions can go here
    mise activate fish | source
    function atuin_lazy --on-event fish_prompt
         atuin init fish | source
         functions -e atuin_lazy
    end
    starship init fish | source
else
    mise activate fish --shims | source
end

set -gx PATH  \
    $HOME/.cargo/bin \
    $HOME/bin \
    $PATH \
    $HOME/.local/bin \
    /usr/local/bin

abbr -a gco "git checkout"
abbr -a gah 'git stash; and git pull --rebase; and git stash pop'
if command -v eza > /dev/null
    abbr -a ls 'eza --all --long --group --group-directories-first --icons --header --time-style long-iso --hyperlink'
else
    abbr -a l 'ls'
    abbr -a ls 'ls -la'
end
