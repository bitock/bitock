# bash .sh/ubuntu.sh

rmdir $HOME/Documents
rmdir $HOME/Music
rmdir $HOME/Templates
rmdir $HOME/Videos

sudo apt update
sudo apt upgrade --yes
sudo apt install vim make curl --yes
sudo apt install git git-lfs --yes && cp config/.gitconfig $HOME/.gitconfig
sudo apt install xz-utils rpi-imager --yes
sudo apt install yt-dlp --yes

cp config/keybindings.json $HOME/.config/Code/User/keybindings.json
cp config/settings.json $HOME/.config/Code/User/settings.json

mkdir -p $HOME/.ssh
cp config/config $HOME/.ssh/config
ssh-keygen -t rsa -b 4096 -f ~/.ssh/bitock -N ""
