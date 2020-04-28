#!/usr/bin/zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

if grep "nvm" ~/.zshrc > /dev/null
then
  echo 'exist nvm config'
else
  echo 'not exist nvm config'
  echo ' >> ~/.zshrc'
  echo '# nvm' >> ~/.zshrc
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
  echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> ~/.zshrc
  echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.zshrc
fi

# source zshrc
source ~/.zshrc

nvm install node # "node" is an alias for the latest version

