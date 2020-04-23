# Lang
set -x LC_ALL en_US.UTF-8

# Pyenv 
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PATH
status --is-interactive; and source (pyenv init -|psub)

# Nodebrew
set -x NODEBREW_ROOT $HOME/.nodebrew
set -x PATH $NODEBREW_ROOT/current/bin $PATH

# Golang
set -x GOROOT /usr/local/opt/go/libexec
set -x GOPATH $HOME/.golang
set -x PATH $GOROOT/bin $GOPATH/bin $PATH

# Java
set -x JAVA_HOME (/usr/libexec/java_home)

# Direnv
eval (direnv hook fish)

# Alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias g='git'

# Fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

