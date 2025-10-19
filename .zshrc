# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Basic settings
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="powerlevel10k/powerlevel10k"
export HISTSIZE=1000
export SAVEHIST=1000
export DISPLAY=:0
export LIBGL_ALWAYS_INDIRECT=0
export MESA_LOADER_DRIVER_OVERRIDE=i965
export PATH="$HOME/bin:$PATH"

# Oh My Zsh plugins
plugins=(
  git
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z
)
source $ZSH/oh-my-zsh.sh

# Powerlevel10k config
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
zle -N fzf-cd-widget
bindkey  '^[c' fzf-cd-widget

# Autocomplete and suggestions
autoload -Uz compinit
if [[ -z "$ZSH_COMPDUMP_LOADED" ]]; then
  compinit -C
  export ZSH_COMPDUMP_LOADED=1
fi
zstyle ':completion:*' menu select
bindkey '^I' expand-or-complete
bindkey '^[f' autosuggest-accept

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Alias example
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# Custom copy function
copy() {
  cat "$1" | zsh ~/bin/clip.sh
}

#yazi
function open_yazi() { yazi; }
zle -N open_yazi
bindkey '^[y' open_yazi

export EDITOR="nvim"
export VISUAL="nvim"
