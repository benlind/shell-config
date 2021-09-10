# Shell Config Files

These are the personal shell config files of Ben Lind. Feel free to fork and
improve as you see fit.

## Installation

### Prerequisites

1. XCode command line tools (to install, just try to run a git command)
2. [Homebrew](brew.sh)
3. [Zsh](http://sourabhbajaj.com/mac-setup/iTerm/zsh.html) (built into macOS now)
4. [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) (you can use the [manual installation](https://github.com/robbyrussell/oh-my-zsh#manual-installation) if there are firewall issues)

### Installing ZSH

Clone this project onto your hard drive (e.g., to `~/.shell`). Make sure you
install Oh My Zsh before creating the below `~/.zshrc` file.

Create `~/.zshrc` with the following content:

```
source ~/.shell/zshrc
```

If necessary, create `~/.bash_profile` with the following content:

```
# Use ZSH
export SHELL=/bin/zsh
exec /bin/zsh -l
```

### ZSH Theme

To get the **agnoster** theme to work correctly, you need to install the Meslo
font. This font comes with [Powerline](https://github.com/powerline), and you
can install just the fonts by running this:

```
git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh
```

Then set your terminal font to Meslo.
