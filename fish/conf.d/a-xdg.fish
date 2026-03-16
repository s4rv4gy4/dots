#!/usr/bin/env fish

# ~/.config/fish/conf.d/a-xdg.fish
# xdg configs like exported paths, etc.

# erase user-added paths
# set --erase fish_user_paths

# check: `brew shellenv`
# exported variable paths for homebrew
set --global --export HOMEBREW_PREFIX "/opt/homebrew"
set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar"
set --global --export HOMEBREW_REPOSITORY "/opt/homebrew"

# exported variable paths for system
set --global --export XDG_CACHE_HOME "$HOME/.cache"
set --global --export XDG_CONFIG_HOME "$HOME/.config"
set --global --export XDG_DATA_HOME "$HOME/.local/share"

# exported variable paths for code
set --global --export GOROOT "$HOME/.goroot"
set --global --export GOPATH "$HOME/.gopath"

# exported variable paths for utils
# set editor/manpager as neovim
set --global --export EDITOR "nvim"
set --global --export MANPAGER "nvim +Man!"

# exported variable paths for zoxide
set --global --export _ZO_DATA_DIR "$XDG_DATA_HOME/zoxide"