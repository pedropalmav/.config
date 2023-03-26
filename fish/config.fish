if status is-interactive
    # Commands to run in interactive sessions can go here
    neofetch
end

# Aliases

alias ls "lsd"

# Paths

fish_add_path /home/pedropalmav/.spicetify
fish_add_path /home/pedropalmav/JetBrains Rider-2022.3.3/bin

# Prompt

starship init fish | source
