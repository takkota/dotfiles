#!/bin/bash
sh ./initialize.sh
sh ./deploy.sh
sh ./compose.sh
echo 'if vim(neovim) does not work, try "pip3 uninstall neovim & pip3 install pynvim & pip3 install neovim"'
echo 'set alfred synced with Dropbox manually.'
echo 'load iterm preferences from dotfiles/settings.'
echo 'sign in 1password'
echo 'set chrome user account to kotayuka0313@gmail.com'
