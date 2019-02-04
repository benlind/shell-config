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

# Use my cowfiles. I filtered out some weird ones and added more from the
# netterwebs.
export COWPATH="$(dirname "$0")/cowfiles"

# Print `fortune | cowsay | lolcat` on new shell
if command -v fortune >/dev/null 2>&1; then          # if fortune is installed
    if command -v cowsay > /dev/null 2>&1; then      # if cowsay is installed

        # Choose a random cowfile for cowsay
        cowfiles=( $(cowsay -l | sed "1 d") )
        cowfile=${cowfiles[$(($RANDOM % ${#cowfiles[*]}))]}

        if command -v lolcat > /dev/null 2>&1; then  # if lolcat is installed
            fortune | cowsay -f "$cowfile" | lolcat
        else
            fortune | cowsay -f "$cowfile"
        fi
    else
        if command -v lolcat > /dev/null 2>&1; then  # if lolcat is installed
            fortune | lolcat
        else
            fortune
        fi
    fi

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
