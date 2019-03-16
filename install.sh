#!/bin/bash
sh ./initialize.sh
sh ./deploy.sh
sh ./compose.sh
echo 'set alfred synced with iCloud manually.'
echo 'load iterm preferences from dotfiles/settings.'
