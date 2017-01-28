# Shell Config Files

These are the personal shell config files of Ben Lind. Feel free to fork and
improve as you see fit.

## Installation

Simply clone this project onto your hard drive and then symlink either the zshrc
or bashrc files to your home directory.

Example for ZSH (with this project cloned into `~/.shell`):

```
ln -s ~/.shell/zshrc ~/.zshrc
```

### ZSH Theme

To get the **agnoster** theme to work correctly, you need to install the Meslo font. This font comes with [Powerline](https://github.com/powerline), and you can install just the fonts by running this:

```
git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh
```

Then set your terminal font to Meslo.
