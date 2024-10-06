homedir=~/
cp ./.bashrc $homedir
cp ./.vimrc $homedir
cp ./.alacritty.toml $homedir
cp ./.tmux.conf $homedir

if [ "${homedir}/.config" -z ];then
  mkdir "${homedir}/.config"
fi

if [ "${homedir}/.cofig/nvim" -z ];then
  mkdir "${homedir}/.config/nvim"
fi

cp -r ./lua "${homedir}/.config/nvim"

