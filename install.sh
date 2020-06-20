#!/bin/sh

# install oh-my-zsh
# see: https://github.com/ohmyzsh/ohmyzsh
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh-autosuggestions
# see: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# insatll zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# apply template
wget -O ~/.zshrc https://raw.githubusercontent.com/heyuhang0/my-ohmyzsh/master/zshrc.zsh-template
sed -i "s/@TMP_USERNAME/$USER/g" ~/.zshrc

# start zsh
exec zsh -l