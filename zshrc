
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

  # Because I have the permission
  sudo

  # Better with colors!
  colored-man-pages

  # Help working with version control systems.
  git
  git-extras

  # Helper for extracting different types of archives.
  extract

  # Additional completion definitions for Zsh.
  zsh-users/zsh-completions src

  # ZSH port of Fish shell's history search feature.
  zsh-users/zsh-history-substring-search

  # Syntax highlighting bundle.
  zsh-users/zsh-syntax-highlighting

  # zsh completion for docker
  felixr/docker-zsh-completion

  # Z: jump around! jump around!
  rupa/z z.sh

  # Help working with Node.js
  node
  npm
  nvm
  yarn

  kubectl

EOBUNDLES
# tell Antigen that we're done.
antigen apply

# Alias sourcetree
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

# Alias sublime text
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Load nvm: Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load the shell dotfiles
# .exports: env vars
# .zshrc.local: local config
for file in ~/.{zshrc.local,exports}; do
	[[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done

# The next line updates PATH for the Google Cloud SDK.
GCLOUD_SDK_PATH="$HOME/google-cloud-sdk"
[ -s "$GCLOUD_SDK_PATH/path.zsh.inc" ] && source "$GCLOUD_SDK_PATH/path.zsh.inc"
[ -s "$GCLOUD_SDK_PATH/completion.zsh.inc" ] && source "$GCLOUD_SDK_PATH/completion.zsh.inc"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source <(kubectl completion zsh)

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/loicmahieu/Projects/iGLOO/boehringer-customer-platform/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/loicmahieu/Projects/iGLOO/boehringer-customer-platform/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/loicmahieu/Projects/iGLOO/boehringer-customer-platform/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/loicmahieu/Projects/iGLOO/boehringer-customer-platform/node_modules/tabtab/.completions/sls.zsh
