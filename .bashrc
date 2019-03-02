# export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
alias grep='grep --with-filename --line-number --color=always'
alias less='less -R'
alias vim='nvim'
export GOOGLE_APPLICATION_CREDENTIALS="/Users/kota/.secret/DogChat-5d94d9392a12.json"

# source /usr/local/etc/bash_completion.d/git-prompt.sh
# source /usr/local/etc/bash_completion.d/git-completion.bash
# GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# spring build
# application.propertiesで読み込むsecretたち
export SPRING_DATASOURCE_URL="jdbc:mysql://127.0.0.1:3306/botchan?createDatabaseIfNotExist=true"
export SPRING_DATASOURCE_USERNAME=test
export SPRING_DATASOURCE_PASSWORD=testtest
export LINE_BOT_CHANNEL_TOKEN="HexmdmuZKwqHN0kBfDX1xX8z2d9ZvWIknIGtOap6/tnY5mT8bBGH3xF3z9rBEfHv2gtQA/ZSuaDW1CgsveWqdaaU42VILPahBMp4km7PwXBpgb9esoBktssJB++GntqAKINs1lC9dbIdWEjLKTHVPgdB04t89/1O/w1cDnyilFU="
export LINE_BOT_CHANNEL_SECRET="1a11636b42a84c3f2b0eafcbda33560c"
