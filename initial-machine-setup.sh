# Zsh
brew install zsh
echo "/home/linuxbrew/.linuxbrew/bin/zsh" | sudo tee -a /etc/shells
chsh -s $(which zsh)

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s ~/dotfiles/aliases.zsh ~/.oh-my-zsh/custom/
ln -s ~/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc

# Brew (Windows Subsystem for Linux)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >>/home/$USER/.zshrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"' >>/home/$USER/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
sudo apt-get install build-essential bubblewrap

# tmux
brew install tmux
cp ~/dotfiles/.tmux.conf ~/.tmux.conf # sym link doesn't work for some reason

# Fzf
brew install fzf

# Neovim
brew install neovim
brew install lazygit
brew install tree-sitter-cli
brew install ripgrep
brew install fd
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Claude code
curl -fsSL https://claude.ai/install.sh | bash

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.5/install.sh | bash

# Docker
# https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
# for wsl: sudo usermod -aG docker $USER

# Terraform
# AWS CLI

brew install gh

# AI tools
curl -fsSL https://pi.dev/install.sh | sh
brew install --cask codex