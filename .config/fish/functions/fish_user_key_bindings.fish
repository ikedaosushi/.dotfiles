function fish_user_key_bindings
    fzf_key_bindings
    ### ghq ###
    bind \cg '__ghq_ctrl_g'
    if bind -M insert >/dev/null ^/dev/null
        bind -M insert \cg '__ghq_ctrl_g'
    end
    ### ghq ###

    ### ghq-vscode ###
    bind \cv '__ghq_vscode_ctrl_v'
    if bind -M insert >/dev/null ^/dev/null
        bind -M insert \cv '__ghq_vscode_ctrl_v'
    end
    ### ghq-vscode ###
end
