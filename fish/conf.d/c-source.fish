#!/usr/bin/env fish

# ~/.config/fish/conf.d/c-source.fish
# evals and sources sit here only ....

if status is-interactive
    # kiro ide require this in fish
    # string match --quiet "$TERM_PROGRAM" "kiro" and . (kiro --locate-shell-integration-path fish)

    # source zoxide on first
    zoxide init fish | source
end
