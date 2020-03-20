# set -gx fish_theme agnoster

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
# function fish_user_key_bindings
#   bind \cr peco_select_history # bind for peco history to ctrl + r
#   bind \c] peco_select_ghq_repository # bind for peco change dir to ctrl + ]
# end

set -x LANG ja_JP.UTF-8

# pyenv 
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PATH
pyenv init - | source

# nodebrew
set -x NODEBREW_ROOT $HOME/.nodebrew
set -x PATH $NODEBREW_ROOT/current/bin $PATH

# golang
set -x GOROOT /usr/local/opt/go/libexec
set -x GOPATH $HOME/.golang
set -x PATH $GOROOT/bin $GOPATH/bin $PATH

# alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias g='git'