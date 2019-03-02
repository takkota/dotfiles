#!/bin/bash

# Dotfilesのsymbolic link作成
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

	ln -snfv ~/dotfiles/"$f" ~/
done

# xcodeインストール(ポップアップが出る)
xcode-select --install
# homebrewインストール(ユーザー/パスワード求められる)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# deinインストール
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

# ansibleインストール
brew install ansible
# ansibleで構築
ansible-playbook main.yml
