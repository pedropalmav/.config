if status is-interactive
    # Commands to run in interactive sessions can go here
    neofetch
end

# Aliases

alias ls "lsd"

# Paths

fish_add_path /home/pedropalmav/.spicetify

# Prompt

starship init fish | source
