if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source
end

starship init fish | source

# Created by `pipx` on 2024-04-12 09:27:03
set PATH $PATH /Users/Rob.Hand/.local/bin
set RIPGREP_CONFIG_PATH $RIPGREP_CONFIG_PATH ~/.config/.ripgreprc
fzf --fish | source
zoxide init fish | source

abbr -a gco "git checkout"
abbr -a gah 'git stash; and git pull --rebase; and git stash pop'
if command -v eza > /dev/null
    abbr -a ls 'eza --all --long --group --group-directories-first --icons --header --time-style long-iso --hyperlink'
else
    abbr -a l 'ls'
    abbr -a ls 'ls -la'
end
