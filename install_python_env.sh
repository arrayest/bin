#!/usr/bin/zsh
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

if grep "pyenv" ~/.zshrc > /dev/null
then
  echo 'exist pyenv config'
else
  echo 'not exist pyenv config'
  echo '' >> ~/.zshrc
  echo '# pyenv' >> ~/.zshrc
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
  echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(pyenv init -)"' >> ~/.zshrc
fi

# source zshrc
source ~/.zshrc

python_version=3.8.5
mkdir -p ~/.pyenv/cache
cd ~/pyenv/cache
wget https://npm.taobao.org/mirrors/python/3.8.5/Python-3.8.5.tar.xz
pyenv install $python_version -v
pyenv global $python_version
unset python_version

