
# Load default dotfiles
source ~/.bash_profile

# Load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

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

  # Z: jump around! jump around!
  rupa/z z.sh

EOBUNDLES
# tell Antigen that we're done.
antigen apply

# Alias sourcetree
alias stree='open -a SourceTree'

# Alias sublime text
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Load nvm: Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
