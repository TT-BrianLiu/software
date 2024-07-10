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
