if status is-interactive
    starship init fish | source
    zoxide init fish --cmd cd | source
    fzf --fish | source
    fish_vi_key_bindings
end

export EDITOR=nvim
export BAT_THEME="Catppuccin Macchiato"

# Created by `pipx` on 2024-12-18 14:19:34
set PATH $PATH /home/typicalteacup/.local/bin
