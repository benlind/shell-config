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

Clone this project onto your hard drive (e.g., to `~/.shell`):

```
git clone git@github.com:benlind/shell-config.git ~/.shell
```

Make sure you install Oh My Zsh first, and then create `~/.zshrc` with the following content:

```
source ~/.shell/zshrc
```

If necessary (only on old versions of macOS), create `~/.bash_profile` with the following content:

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

Then set your terminal font to Meslo in the Profiles. See [this page](https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#what-do-these-acronym-variations-in-the-font-name-mean-lg-l-m-s-dz-sz) for what LG, L, M, S, and DZ mean. I chose "Meslo LG L for Powerline" which has a larger line height. That makes the triangle separators not bleed through into the above/below lines.

### Install zsh-autosuggestions

[Installation instructions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md). Specifically you need to clone the autosuggestions directory, since zsh-autosuggestions is already added to our the zshrc file in this repo.

### Install zsh-syntax-highlighting

The [installation instructions](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) aren't explicit enough. This is what worked for me, based on autosuggestions:

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Insecure warnings

When launching oh-my-zsh you may get warnings like this:

```
[oh-my-zsh] Insecure completion-dependent directories detected:
drwxr-xr-x  3 $USER-admin  staff  96 Sep 10 13:53 /usr/local/share/zsh
drwxr-xr-x  3 $USER-admin  staff  96 Sep 10 14:16 /usr/local/share/zsh/site-functions
lrwxr-xr-x  1 $USER-admin  staff  39 Sep 10 14:16 /usr/local/share/zsh/site-functions/_brew -> ../../../Homebrew/completions/zsh/_brew
```

The easiest way to solve this is to change the ownership of that zsh directory to be the non-admin user:

```
compaudit # get list of directories - the following commands assume these all fall under /usr/local/share/zsh
su $USER-admin
sudo chown -R $USER:staff /usr/local/share/zsh
sudo chmod -R 755 /usr/local/share/zsh
```
