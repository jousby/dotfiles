#!/bin/bash

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


###############################################################################
# Clone required projects
###############################################################################

# Clone powerline fonts project to ./tmp and run install
git clone git@github.com:powerline/fonts.git ${SCRIPT_DIR}/tmp/fonts

${SCRIPT_DIR}/tmp/fonts/install.sh
fc-cache -vf ~/.fonts/

# Clone solarized ls dircolors project
git clone git@github.com:seebi/dircolors-solarized.git ${SCRIPT_DIR}/tmp/dircolors-solarized

cp ${SCRIPT_DIR}/tmp/dircolors-solarized/dircolors.256dark ~/.dircolors
cp ${SCRIPT_DIR}/tmp/dircolors-solarized/dircolors.256dark ~/.dir_colors


###############################################################################
# Install and configure oh my zsh
###############################################################################

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Customise newly installed ~/.zshrc file
sed -i -e 's/ZSH_THEME="\(.*\)"/ZSH_THEME="bullet-train"/' ~/.zshrc
sed -i -e 's/#\sZSH_CUSTOM=\(.*\)/ZSH_CUSTOM=~\/dotfiles\/zsh-custom/' ~/.zshrc
