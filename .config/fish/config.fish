source "$HOME/.cargo/env.fish"
set -Ux PATH $PATH ~/.cargo/bin
set -Ux BROWSER yandex-browser

zoxide init fish | source
starship init fish | source

alias c="clear"
alias hx="helix"
alias z=__zoxide_z
alias al="alsamixer"
alias ll="exa --icons -a"
alias sp="sudo pacman -S"
alias lla="exa --icons -la"
alias spu="sudo pacman -Suy"
alias spr="sudo pacman -Rns"

set -g fish_greeting ""

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
