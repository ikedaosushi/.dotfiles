########################################
# custom
set -gx fish_theme agnoster

function fish_user_key_bindings
  bind \cr peco_select_history # bind for peco history to ctrl + r
  bind \c] peco_select_ghq_repository # bind for peco change dir to ctrl + ]
end

########################################
set -x LANG ja_JP.UTF-8

# pyenv 
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PATH
. (pyenv init - | psub)

# python venv setting 
set -x VIRTUAL_ENV_DISABLE_PROMPT 1


# rbenv
set -x PATH $HOME/.rbenv/shims $PATH
source (rbenv init - | psub)

# nodebrew
set -x NODEBREW_ROOT $HOME/.nodebrew
set -x PATH $NODEBREW_ROOT/current/bin $PATH

# golang
# set -x GOROOT /usr/local/opt/go/libexec
# set -x GOPATH $HOME/.code/golang
# set -x PATH $GOROOT/bin $GOPATH/bin $PATH

########################################
# alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias g='git'

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/ikedayutaro/.nodebrew/node/v8.8.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/ikedayutaro/.nodebrew/node/v8.8.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/ikedayutaro/.nodebrew/node/v8.8.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /Users/ikedayutaro/.nodebrew/node/v8.8.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ikedayutaro/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/ikedayutaro/google-cloud-sdk/path.fish.inc'; else; . '/Users/ikedayutaro/google-cloud-sdk/path.fish.inc'; end; end
