##fzf init 
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo "fzf init success"

##zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo "zsh-autosuggestions init success"

##zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo "zsh-syntax-highlighting init success"

##zsh-z
git clone https://github.com/agkozak/zsh-z ~/.oh-my-zsh/custom/plugins/zsh-z
echo "zsh-z init success"

##yazi
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
cargo install --locked yazi-fm yazi-cli
echo "yazi init success"

rm ~/.zshrc
cp .zshrc ~/.zshrc
