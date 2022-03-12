# Add fish repository
echo 'deb http://download.opensuse.org/repositories/shells:/fish/Debian_10/ /' | sudo tee /etc/apt/sources.list.d/shells:fish.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish/Debian_10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish.gpg > /dev/null

apt update

# Install packages
apt install htop
apt install fish
apt install tmux
apt install git
apt install fzf
apt install ack
apt install docker.io

# Install latest version of neovim
add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get install neovim

# Init fish
chsh -s $(which fish)

# Install fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# Install fisher plugins
fisher install IlanCosman/tide@v5
fisher install jethrokuan/fzf

# Install node
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt install nodejs

npm install -g tree-sitter-cli

# Add aliases
mkdir -p ~/.config/fish/aliases
ln -s $(pwd)/fish/aliases/alias.fish ~/.config/fish/aliases/alias.fish

# Install nvim plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Config nvim
mkdir -p ~/.config/nvim
ln -s $(pwd)/nvim/init.vim ~/.config/nvim/init.vim

mkdir -p ~/.config/nvim/after/plugin
ln -s $(pwd)/nvim/after/plugin/nerdtree.rc.vim ~/.config/nvim/after/plugin/nerdtree.rc.vim
ln -s $(pwd)/nvim/after/plugin/telescope.rc.vim ~/.config/nvim/after/plugin/telescope.rc.vim
# ln -s $(pwd)/nvim/after/plugin/treesitter.rc.vim ~/.config/nvim/after/plugin/treesitter.rc.vim
ln -s $(pwd)/nvim/after/plugin/ctrlsf.rc.vim ~/.config/nvim/after/plugin/ctrlsf.rc.vim

# Config tmux
mkdir -p ~/.config/tmux
ln -s $(pwd)/tmux/tmux.conf ~/.tmux.conf
