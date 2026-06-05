# My dotfiles (light)

Version allégée pour une install macOS propre. L'ancienne config complète reste dans l'historique git (`git show master:zshrc`, etc.).

## Structure

```
dotfiles/
├── zshrc                 # point d'entrée shell (~60 lignes)
├── zsh/
│   ├── env.zsh           # Homebrew, NVM, OrbStack, terraform
│   ├── aliases.zsh       # aliases shell minimaux
│   ├── optional.rc       # activer des modules optionnels
│   ├── optional/         # gcloud, android, oh-my-zsh, …
│   └── functions/        # fonctions zsh (cpwd, …)
├── gitconfig.shared      # aliases git + delta (sans [user])
├── gitconfig.user.example
└── gitignore
```

## Install rapide (sans rcm)

```bash
git clone https://github.com/LoicMahieu/dotfiles.git ~/dotfiles

# Shell — remplace ~/.zshrc (sauvegarde d'abord si besoin)
cp ~/.zshrc ~/.zshrc.backup 2>/dev/null || true
ln -sf ~/dotfiles/zshrc ~/.zshrc

# Global gitignore — crée/remplace ~/.gitignore seulement
ln -sf ~/dotfiles/gitignore ~/.gitignore

# Git aliases — n'écrase PAS ~/.gitconfig, ajoute un include
git config --global include.path ~/dotfiles/gitconfig.shared
```

Puis ouvre un nouveau terminal. Tu peux vider `~/.zprofile` (NVM/OrbStack sont déjà dans `zsh/env.zsh`).

## Install avec rcm

```bash
brew install rcm
git clone https://github.com/LoicMahieu/dotfiles.git ~/dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup
git config --global include.path ~/dotfiles/gitconfig.shared
```

`rcup` ne lie que `zshrc` et `gitignore`. Le reste est sourcé depuis `~/dotfiles`.

## Modules optionnels

Édite `zsh/optional.rc` et décommente ce dont tu as besoin :

- `oh-my-zsh.zsh` — prompt + plugins (nécessite oh-my-zsh installé)
- `gcloud.zsh` — Google Cloud SDK
- `android.zsh` — Android SDK
- `bun.zsh`, `pyenv.zsh`, `kubectl.zsh`

## Dépendances recommandées

```bash
brew install fzf git-delta   # fzf + pager git (delta)
```

Déjà utiles sur ta machine : `gh`, `glab`, `jq`, `ripgrep`, `terraform`.

## Migration depuis l'ancienne config

| Avant | Maintenant |
|---|---|
| oh-my-zsh obligatoire | optionnel via `optional/oh-my-zsh.zsh` |
| `hyper.js` | supprimé (tu utilises Warp) |
| `[user]` dans gitconfig | dans `~/.gitconfig` local |
| chemins `/Users/loic/…` | `$HOME` partout |
| 160+ lignes zshrc | ~15 lignes + modules |

## Inspirations

* https://github.com/thoughtbot/dotfiles
* https://github.com/mathiasbynens/dotfiles
