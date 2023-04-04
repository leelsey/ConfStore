# ZSH SYNTAX HIGHLIGHTING
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ZSH AUTOSUGGESTIONS
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH-COMPLETIONS
if type brew &>/dev/null; then
  FPATH=/usr/local/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Z
source /usr/local/etc/profile.d/z.sh

# TacSh
source "$HOME/.config/tacsh/tac.sh"

# ASDF-VM
source /usr/local/opt/asdf/libexec/asdf.sh

# DIRENV
eval "$(direnv hook zsh)"

# CREW
le () { cd /Users/leelsey/Library/CloudStorage/Dropbox/Workspace/Leelsey; ls; }
re () { cd /Users/leelsey/Library/CloudStorage/Dropbox/Workspace/Reflct; ls; }
tf () { cd /Users/leelsey/Library/CloudStorage/Dropbox/Workspace/SecTF; ls; }
