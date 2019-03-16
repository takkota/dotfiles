##
# Your previous /Users/user/.bash_profile file was backed up as /Users/user/.bash_profile.macports-saved_2016-10-10_at_02:04:21
##

# MacPorts Installer addition on 2016-10-10_at_02:04:21: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.

# alias
alias vim='nvim'
# hombebrew
export PATH=/usr/local/bin:$PATH
# Aseprite
export ASEPRITE="$HOME/Library/Application Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS"
export PATH="$ASEPRITE:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# python
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# node
export PATH=$PATH:$HOME/.nodebrew/current/bin

# flutter
export PATH=$HOME/flutter/bin:$PATH

# Android
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

if which jenv > /dev/null; then
  # JENV_ROOTがemptyの場合、'${HOME}/.jenv'がrootと設定される
  export JENV_ROOT=/usr/local/var/jenv
  eval "$(jenv init -)"
fi

# bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# fishに環境変数をわたす
export TO_FISH_PATH=$PATH
exec fish
