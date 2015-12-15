
# Load default dotfiles
source ~/.bash_profile

# Load antigen
source ~/.code/antigen/antigen.zsh
# install some antigen bundles
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES

  # Pure prompt
  mafredri/zsh-async
  sindresorhus/pure

  # Help working with version control systems.
  git

  # Helper for extracting different types of archives.
  extract

  # Additional completion definitions for Zsh.
  zsh-users/zsh-completions src

  # ZSH port of Fish shell's history search feature.
  zsh-users/zsh-history-substring-search

  # Syntax highlighting bundle.
  zsh-users/zsh-syntax-highlighting

EOBUNDLES
# tell Antigen that we're done.
antigen apply

# Alias sourcetree
alias stree='open -a SourceTree'

# Load nvm: Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
