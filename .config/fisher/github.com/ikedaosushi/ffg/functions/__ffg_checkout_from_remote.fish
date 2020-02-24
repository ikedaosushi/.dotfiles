function __ffg_checkout_from_remote  -d "Fuzzy-find and checkout a branch from remote"
  git branch --all | grep -v HEAD | grep remotes | string trim | fzf | string replace 'remotes/' '' | read -l full_branch
  string replace -r '[^\/]+/'  '' $full_branch | read -l branch
  git checkout -b $branch $full_branch
  commandline -f repaint
end