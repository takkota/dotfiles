#!/bin/bash
# dotfilesが増えたら実行する処理。(ここの処理自体は変えないこと)

# Dotfilesのsymbolic link作成
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

	ln -snfv ~/dotfiles/"$f" ~/
done
