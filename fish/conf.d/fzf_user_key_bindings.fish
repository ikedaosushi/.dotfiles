function fzf-bcd-widget -d 'cd backwards'
    pwd | awk -v RS=/ '/\n/ {exit} {p=p $0 "/"; print p}' | tac | eval (__fzfcmd) +m --select-1 --exit-0 $FZF_BCD_OPTS | read -l result
    [ "$result" ]; and cd $result
    commandline -f repaint
end

function fzf-select -d 'fzf commandline job and print unescaped selection back to commandline'
    set -l cmd (commandline -j)
    [ "$cmd" ]; or return
    eval $cmd | eval (__fzfcmd) -m --tiebreak=index --select-1 --exit-0 | string join ' ' | read -l result
    [ "$result" ]; and commandline -j -- $result
    commandline -f repaint
end


bind \cx\cb fzf-bcd-widget