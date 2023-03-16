#!/bin/sh

while [ true ] ; do
	echo "Only use this on a fresh install."
	read -p "This will destroy your old (n)vim config. Are you sure? " ANSWER

	if [ "$ANSWER" = "yes" ] ; then
		echo "As you wish"
		break
	elif [ "$ANSWER" = "no" ] ; then
		echo "Aborting"
		break
	else
		echo "This is a yes or no question. Are you sure?"
	fi
done

rm -rf "$HOME/.config/nvim" 2> /dev/null
rm -rf "$HOME/.vim" 2> /dev/null
rm -f "$HOME/.vimrc" 2> /dev/null
rm "$PWD/.vim/init.vim"

ln -s "$PWD/.vim" "$HOME/.config/nvim"
ln -s "$PWD/.vim" "$HOME/.vim"
ln -s "$PWD/.vimrc" "$HOME/.vimrc"
ln -s "$HOME/.vimrc" "$PWD/.vim/init.vim"

rm -rf "$HOME/.local/share/nvim/"
NVIM_PLUGIN_DIR="$HOME/.local/share/nvim/site/pack/packer/start"
mkdir -p "$NVIM_PLUGIN_DIR" 2> /dev/null
(cd "$NVIM_PLUGIN_DIR" && git clone "https://github.com/wbthomason/packer.nvim.git")

echo "You will see errors upon launching nvim."
echo "Now go to nvim and write"
echo ":PackerInstall"
