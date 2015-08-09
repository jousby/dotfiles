# Home directory setup

### Scenario

I'm a software developer (Scala, Java, Javascript/Typescript). This project is the means by which I bootstrap a fresh Linux distribution install with my favourite tools / color schemes.

### Tools

* Gnome Terminal Setup
* Shell Setup (Zsh + Oh My Zsh)
* Color Schemes (Solarized scheme for 'ls' / vim etc.)

## Project Contents

 File | Description
 --- | ---
 bashrc | configure bash if zsh unavailable
 bashrc_alias | aliases for bash if zsh unavailable
 eclipse.desktop | ubuntu unity desktop launcher (see Eclipse section)
 gtkrc-eclipse | used by the eclipse desktop launcher above
 install.sh | installs zsh, powerline fonts, ls colors
 zsh-custom | a zsh custom folder (themes, aliases, plugins), used to customise zsh with out altering main installation. 

## Setup Guide

### Starting Point

The following guide assumes you have successfully installed a modern Linux distribution, have logged in and you are staring at a blank desktop. I'm using Ubuntu 15.04 and the Unity desktop manager to test all of this.  

First things first. You need a terminal.

#### Keyboard shortcut for opening a terminal

Checkout the keyboard shortcuts for your window manager and find that one that launches a terminal window. In Unity its 'Ctl-Alt-t'. Remember this shortcut. Start a terminal.

#### Shell Setup (Install Zsh + Oh My Zsh)

By default you are probably now at a command prompt that is using the 'bash' command line interpreter (cli). There are a bunch of different [shells](https://en.wikipedia.org/wiki/List_of_command-line_interpreters#Unix-like_systems) for Linux. Bash is not bad but Zsh has some nice features for both power users and beginners alike.

1. Install required packages:

  `sudo apt-get install curl zsh git`

2. Clone this project into your home dir.

 `git clone https://github.com/jousby/dotfiles.git ~/.`

3. Run `~/dotfiles/install.sh`. This will:
  * Install Oh My Zsh
  * Install Powerline fonts (used by the 'bullet train' oh my zsh theme we are about to enable.)
  * Install Solarized color scheme for the 'ls' command.

4. Configure Gnome-Terminal profile preferences ('Edit' -> 'Profile Preferences'):
  * Change the font to one of the powerline fonts like "Source Code Pro for Powerline".
  * On the colors tab change the color scheme to something like 'solarized' or some dark variation.

5. Start a new shell to see the the changes.

### Bash

So ./bashrc and ./bash_alias are for when I'm on a machine where zsh is not an option.


### Eclipse

This get things looking reasonable on my lower res screen (3840x1024):

* eclipse.desktop is a unity launcher file that should live in ~/.local/share/applications
* gtkrc-eclipse is referenced from the eclipse cmd in the eclipse.desktop file
