HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

zmodload -i zsh/complist

bindkey -M menuselect '^o' accept-and-infer-next-history
zstyle ':completion:*:*:*:*:*' menu select

# boring users
zstyle ':completion:*:*:*:users' ignored-patterns \
        adm amanda apache at avahi avahi-autoipd beaglidx bin cacti canna \
        clamav daemon dbus distcache dnsmasq dovecot fax ftp games gdm \
        gkrellmd gopher hacluster haldaemon halt hsqldb ident junkbust kdm \
        ldap lp mail mailman mailnull man messagebus  mldonkey mysql nagios \
        named netdump news nfsnobody nobody nscd ntp nut nx obsrun openvpn \
        operator pcap polkitd postfix postgres privoxy pulse pvm quagga radvd \
        rpc rpcuser rpm rtkit scard shutdown squid sshd statd svn sync tftp \
        usbmux uucp vcsa wwwrun xfs '_*'

# cache
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path $ZSH_CACHE_DIR

setopt AUTO_MENU
unsetopt MENU_COMPLETE

autoload -U +X bashcompinit && bashcompinit

setopt AUTO_CD
setopt CD_SILENT


autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

#eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/powerline.omp.json)"
#source ~/.config/oh-my-posh/completions.zsh

alias ls='eza --icons --group-directories-first'
alias ll='ls -al'
alias la='ls -a'

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
alias md='mkdir -p'
alias rd=rmdir

export ANDROID_HOME=/home/typicalteacup/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/opt/flutter/bin
export PATH=$PATH:/home/typicalteacup/.cargo/bin

export EDITOR=nvim
export GPG_TTY=$(tty)

# bun completions
[ -s "/home/typicalteacup/.bun/_bun" ] && source "/home/typicalteacup/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
