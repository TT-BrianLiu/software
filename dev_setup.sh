# (Optional) Install bash-it: https://github.com/Bash-it/bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh # NOTE: This overrides .bashrc by default; select Yes when it asks if you want to append instead
# Change default theme to metal: export BASH_IT_THEME='metal'
source ~/.bashrc


# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# https://github.com/junegunn/fzf
# https://github.com/junegunn/fzf.vim
# requires rg or ag
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.bashrc


# https://github.com/BurntSushi/ripgrep
sudo apt-get install ripgrep


# Tmux plugin manager (tpm): https://github.com/tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm


# Install Copilot for vim: https://github.com/github/copilot.vim
# Upgrade Vim to 9.0.0185 or newer
sudo add-apt-repository ppa:jonathonf/vim
sudo apt install vim
# Install Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc
nvm install 22
# Plugin 'github/copilot.vim' is in .vimrc
# Open Vim and run :Copilot setup to enter GitHub credentials
