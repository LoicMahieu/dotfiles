# Light dotfiles — https://github.com/LoicMahieu/dotfiles
export DOTFILES="${DOTFILES:-$HOME/dotfiles}"

[[ -f "$DOTFILES/zsh/env.zsh" ]] && source "$DOTFILES/zsh/env.zsh"
[[ -f "$DOTFILES/zsh/aliases.zsh" ]] && source "$DOTFILES/zsh/aliases.zsh"

for f in "$DOTFILES"/zsh/functions/*(N); do
  source "$f"
done

# fzf (brew install fzf)
[[ -f /opt/homebrew/opt/fzf/shell/completion.zsh ]] && source /opt/homebrew/opt/fzf/shell/completion.zsh
[[ -f /opt/homebrew/opt/fzf/shell/key-bindings.zsh ]] && source /opt/homebrew/opt/fzf/shell/key-bindings.zsh

# Optional stacks — uncomment in zsh/optional.rc to enable
[[ -f "$DOTFILES/zsh/optional.rc" ]] && source "$DOTFILES/zsh/optional.rc"
