#!/usr/bin/env fish

# ~/.config/fish/conf.d/b-abbreviations.fish
# bunch of abbreviations for most-used commands

if status is-interactive
    # development abbr.
    abbr --add "v" "nvim"
    abbr --add "n" "nvim"

    # utils abbr.
    abbr --add "rmf" "rm --recursive --force --verbose"
    abbr --add "rmi" "rm --recursive --force --interactive"
    abbr --add "hic" "history clear"

    # zoxide abbr.
    abbr --add "ze" "zoxide edit"
    abbr --add "zq" "zoxide query --list --score"

    # homebrew abbr.
    abbr --add "bl" "brew list --versions --verbose"
    abbr --add "bi" --set-cursor "brew install % --ask --verbose"

    # git abbr.
    abbr --add "gc:dot" "git clone git@github.com:s4rv4gy4/dot.git"
    abbr --add "gc:dumps" "git clone git@github.com:s4rv4gy4/dumps.git"
end
