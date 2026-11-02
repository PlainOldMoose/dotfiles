# dotfiles

KDE Plasma 6 rice on CachyOS. Bare git repo, with `$HOME` as the work tree.

## Daily use

```fish
dots status            # tracked files only
dots add ~/.config/foo # start tracking a file
dots commit -am "msg"
dots push
```

`dots` is an abbreviation from `config.fish`.

## Restore on a new machine

```sh
git clone --bare https://github.com/PlainOldMoose/dotfiles.git ~/.dotfiles
alias dots='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dots config status.showUntrackedFiles no
dots checkout   # refuses to overwrite existing files: move them aside first
```

Log out and back in so KDE reloads its config. Firefox and LibreWolf profile folder names are machine-specific, so copy `chrome/` and `user.js` into the new profile.
