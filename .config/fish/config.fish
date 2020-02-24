# Locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

# Node
set -gx PATH $HOME/.nodebrew/current/bin $PATH

# Mysql
# set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths

# Python
status --is-interactive; and source (pyenv init -|psub)
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# Ruby
status --is-interactive; and source (rbenv init -|psub)

# Go
set -gx GOPATH $HOME/.go
set -gx GOBIN $GOPATH/bin
set -gx PATH $GOBIN $PATH

# Rust
set -gx PATH $HOME/.cargo/bin $PATH

# Direnv
eval (direnv hook fish)

# Tex
# set -gx PATH /Library/TeX/texbin/ $PATH

# Java
set -gx JAVA_HOME (/usr/libexec/java_home -v "1.8")
set -gx PATH $JAVA_HOME/bin $PATH

# Spotify-DL
set -gx SPOTIPY_CLIENT_ID 'd13d0dbf47284a20997a216fcbc94e35'
set -gx SPOTIPY_CLIENT_SECRET '402689fa1492413d8d88b581963eec9c'
set -gx SPOTIPY_REDIRECT_URI 'http://localhost:3002'
set -gx YOUTUBE_DEV_KEY 'AIzaSyAgh7KxcKittHQUKuV78iyjCBxWkwIKPzc'

# GCP
## The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yutaro_ikeda/.tmp/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/yutaro_ikeda/.tmp/google-cloud-sdk/path.fish.inc'; else; . '/Users/yutaro_ikeda/.tmp/google-cloud-sdk/path.fish.inc'; end; end

# Util
alias cat='bat'
alias ping='prettyping'
alias find='fd'
alias du='ncdu'

# fzf
set -U FZF_TMUX 0

# Gnuplot
set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths

## ServiceAccoutKey
### BQ
# set -gx GOOGLE_APPLICATION_CREDENTIALS $HOME/.gcp_creds/bq.json

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/yutaro_ikeda/.nodebrew/node/v10.1.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/yutaro_ikeda/.nodebrew/node/v10.1.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/yutaro_ikeda/.nodebrew/node/v10.1.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /Users/yutaro_ikeda/.nodebrew/node/v10.1.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/yutaro_ikeda/.nodebrew/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /Users/yutaro_ikeda/.nodebrew/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish
