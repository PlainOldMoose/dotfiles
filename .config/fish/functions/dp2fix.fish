function dp2fix --description 'Re-enable DP-2 when it stays black after sleep'
    kscreen-doctor output.DP-2.disable
    sleep 3
    kscreen-doctor output.DP-2.enable
end
