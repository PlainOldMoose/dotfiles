source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# prompt + z jumping (cd smarter: `z proj`, `zi` for fuzzy picker)
type -q starship; and starship init fish | source
type -q zoxide; and zoxide init fish | source

# TokyoNight fzf
set -gx FZF_DEFAULT_OPTS "--border=rounded --layout=reverse --height=40% --color=fg:#c0caf5,bg:-1,hl:#7aa2f7,fg+:#c0caf5,bg+:#283457,hl+:#7dcfff,info:#565f89,prompt:#7dcfff,pointer:#bb9af7,marker:#9ece6a,spinner:#bb9af7,header:#565f89,border:#292e42"
abbr -a lg lazygit
abbr -a dots git --git-dir=\$HOME/.dotfiles --work-tree=\$HOME

# plain ls like `dir`; fancy eza only via flags (e.g. ls -al --icons=always --color=always). ll/la/lt keep CachyOS fancy defaults
function ls --wraps eza
    eza --color=never --icons=never $argv
end
