##### Oh-my-zsh config #####

# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load. Look in ~/.oh-my-zsh/themes/. Optionally, if
# you set this to "random", it'll load a random theme each time that oh-my-zsh
# is loaded.
ZSH_THEME="benlind"

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



##### General #####

# export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:/Users/benlind/.nvm/versions/node/v5.3.0/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/3.3/bin:/usr/local/heroku/bin:/Users/benlind/.rvm/gems/ruby-2.1.5/bin:/Users/benlind/.rvm/gems/ruby-2.1.5@global/bin:/Users/benlind/.rvm/rubies/ruby-2.1.5/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:~/scripts:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/benlind/.rvm/bin:/Users/benlind/.rvm/bin"

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  . /usr/local/bin/virtualenvwrapper.sh
fi

# if [ -f ~/.virtualenvs/virtualenv-auto-activate.sh ]; then
#   . ~/.virtualenvs/virtualenv-auto-activate.sh
# fi

# Print fortune on new shell
if command -v fortune >/dev/null 2>&1; then  # if fortune is a valid command
    echo ""
    fortune
    echo ""
fi
