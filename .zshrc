ZSH_DISABLE_COMPFIX="true"

alias cddropbox='cd /Users/brad/Library/CloudStorage/Dropbox'
alias cdprojects='cd /Users/brad/Library/CloudStorage/Dropbox/Private/Workspaces'
alias cdposeidon='cd /Users/brad/Library/CloudStorage/Dropbox/Private/Workspaces/Neptune/poseidon'
alias cdtriton='cd /Users/brad/Library/CloudStorage/Dropbox/Private/Workspaces/Neptune/neptune.api'
alias cddsg='cd /Users/brad/Library/CloudStorage/Dropbox/Private/Workspaces/Neptune/data-science/agent_insights'
alias cdcypress='/Users/brad/Library/CloudStorage/Dropbox/Private/Workspaces/Neptune/~web/cypress'

# Add Visual Studio Code (code)
source ~/.poetry/env
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PIP_REQUIRE_VIRTUALENV=true

export PATH="/usr/local/sbin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/brad/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/brad/google-cloud-sdk/path.zsh.inc'; fi
export PATH=$PATH:/opt/homebrew/opt/postgresql@15/bin

# The next line enables shell command completion for gcloud.
if [ -f '/Users/brad/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/brad/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/brad/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/brad/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/brad/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/brad/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias config='/usr/bin/git --git-dir=/Users/brad/.cfg/.git/ --work-tree=/Users/brad'
