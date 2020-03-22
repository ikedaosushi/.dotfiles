function fco -d "Fuzzy-find and checkout a branch"
    git branch --all | grep -v HEAD | string trim | fzf | read -l result; and git checkout "$result"
end

function fcoc -d "Fuzzy-find and checkout a commit"
    git log --pretty=oneline --abbrev-commit --reverse | fzf --tac +s -e | awk '{print $1;}' | read -l result; and git checkout "$result"
end

function fssh -d "Fuzzy-find ssh host via ag and ssh into it"
    ag --ignore-case '^host [^*]' ~/.ssh/config | cut -d ' ' -f 2 | fzf | read -l result; and ssh "$result"
end

function fs -d "Switch tmux session"
    tmux list-sessions -F "#{session_name}" | fzf | read -l result; and tmux switch-client -t "$result"
end