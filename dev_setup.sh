# (Optional) Install bash-it: https://github.com/Bash-it/bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh # NOTE: This overrides .bashrc by default; select Yes when it asks if you want to append instead
sed -i 's/export BASH_IT_THEME=.*/export BASH_IT_THEME='\''metal'\''/' ~/.bashrc
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


# Install Claude Code: https://docs.anthropic.com/en/docs/claude-code
curl -fsSL https://claude.ai/install.sh | bash


# Copy dotfiles to home directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
while true; do
  read -p "Copy dotfiles (.vimrc, .tmux.conf, .gitconfig) to ~? [y/n] " response
  echo
  [[ "$response" =~ ^[YyNn]$ ]] && break
  echo "Please enter y or n"
done
if [[ "$response" =~ ^[Yy]$ ]]; then
  for file in .vimrc .tmux.conf .gitconfig; do
    if [ -f "$SCRIPT_DIR/$file" ]; then
      if [ -f ~/"$file" ]; then
        cp ~/"$file" ~/"$file.bak"
        echo "Backed up ~/$file to ~/$file.bak"
      fi
      cp "$SCRIPT_DIR/$file" ~/"$file"
      echo "Copied $file to ~"
    fi
  done
else
  echo "Skipping dotfiles"
fi
