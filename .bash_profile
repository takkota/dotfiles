##
# Your previous /Users/user/.bash_profile file was backed up as /Users/user/.bash_profile.macports-saved_2016-10-10_at_02:04:21
##

# MacPorts Installer addition on 2016-10-10_at_02:04:21: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
alias vim='nvim'

export ASEPRITE="$HOME/Library/Application Support/Steam/steamapps/common/Aseprite/Aseprite.app/Contents/MacOS"
export PATH="$ASEPRITE:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

export PATH=$PATH:$HOME/.nodebrew/current/bin

export PATH=$HOME/flutter/bin:$PATH

export PATH=$PATH:/Users/kota/Library/Android/sdk/platform-tools

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/kota/.sdkman"
[[ -s "/Users/kota/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/kota/.sdkman/bin/sdkman-init.sh"
exec fish
