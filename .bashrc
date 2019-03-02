# export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
alias grep='grep --with-filename --line-number --color=always'
alias less='less -R'
alias vim='nvim'
export GOOGLE_APPLICATION_CREDENTIALS="/Users/kota/.secret/DogChat-5d94d9392a12.json"

export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# spring build
# application.propertiesで読み込むsecretたち
export SPRING_DATASOURCE_URL="jdbc:mysql://127.0.0.1:3306/botchan?createDatabaseIfNotExist=true"
export SPRING_DATASOURCE_USERNAME=test
export SPRING_DATASOURCE_PASSWORD=testtest
