#!/bin/bash
# 一度しか実行しないような処理を書く。

# xcodeインストール(ポップアップが出る)
xcode-select --install
# homebrewインストール(ユーザー/パスワード求められる)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# deinインストール
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

# ansibleインストール
brew install ansible

# fishermanインストール (fisherfileでやるから不要)
# curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
sh fonts/install.sh
