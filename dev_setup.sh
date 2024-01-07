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
