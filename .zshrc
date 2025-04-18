export ANDROID_HOME=/home/typicalteacup/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/opt/flutter/bin
export PATH=$PATH:/home/typicalteacup/.cargo/bin

export EDITOR=nvim
export GPG_TTY=$(tty)

export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORMTHEME=qt6ct

# bun completions
[ -s "/home/typicalteacup/.bun/_bun" ] && source "/home/typicalteacup/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
