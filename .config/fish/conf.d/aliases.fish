if status is-interactive
    function mkd 
        mkdir $argv[1] && cd $argv[1]
    end

    alias ls='eza --icons --group-directories-first --hyperlink'
    alias la='ls -a'
    alias ll='ls -al'

    alias man='batman'
    alias cat='bat'

    alias v='nvim'
    alias v.='nvim .'
    alias lg='lazygit'
    alias dblc='dblab --config'

    alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
    alias icat='kitty icat'

end
