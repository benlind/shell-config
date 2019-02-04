# -*- mode: Shell-script -*-

##### Oh-my-zsh config #####

# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load. Look in ~/.oh-my-zsh/themes/. Optionally, if
# you set this to "random", it'll load a random theme each time that oh-my-zsh
# is loaded.
ZSH_THEME="agnoster"

# Hide the “user@hostname” info when you're logged in as yourself on your local
# machine (for agnoster theme)
DEFAULT_USER="benlind"

# Change the command execution time
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

DISABLE_UPDATE_PROMPT=true  # Auto-update

# Improve startup time (https://superuser.com/a/274985/536749)
skip_global_compinit=1

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh



##### Custom preference files #####

. ~/.shell/aliases
. ~/.shell/functions
. ~/.shell/variables
. ~/.shell/prompt



##### Keybindings #####

# Make Meta-F move to end of current word, not start of next
bindkey '\ef' emacs-forward-word



##### General Config #####

# Print `fortune` on new shell
if command -v fortune >/dev/null 2>&1; then          # if fortune is installed
    fortune
    echo ""
fi

# ZSH doesn't support shopt, bind, or complete
if hash shopt 2>/dev/null; then
    shopt -s dotglob # make globs (*) include hidden files
fi
if hash bind 2>/dev/null; then
    bind 'set completion-ignore-case on'
    bind 'set show-all-if-ambiguous on'
fi
if hash complete 2>/dev/null; then
    complete -d cd # cd only tab-completes directories
    complete -F __gitc_complete gitc
fi

unsetopt nomatch  # get globs to work with `git add`

# Lazy-load NVM for faster startup
. ~/.shell/lazynvm
