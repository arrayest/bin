sudo apt install -y curl vim emacs openssh-server git zsh cmus tig htop tmux ffmpeg vlc tree flex
sudo apt install -y docker docker-compose
sudo usermod -aG docker $USER
newgrp - docker
sudo apt install -y redis
sudo systemctl disable redis
