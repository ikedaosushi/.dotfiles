function __ffg_checkout -d "Fuzzy-find and checkout a branch"
  git branch --all | grep -v HEAD | grep -v remotes |  string trim | fzf | read -l result; and git checkout "$result"
  commandline -f repaint
end