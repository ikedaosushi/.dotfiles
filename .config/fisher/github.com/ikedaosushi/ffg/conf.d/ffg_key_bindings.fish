bind \cc '__ffg_checkout'
bind \er '__ffg_checkout_from_remote'
bind \co '__ffg_checkout_commit'

if bind -M insert >/dev/null 2>/dev/null
    bind -M insert \cc '__ffg_checkout'
    bind -M insert \er '__ffg_checkout_from_remote'
    bind -M insert \co '__ffg_checkout_commit'
end