curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

if grep "rust" ~/.zshrc > /dev/null
then
  echo 'exist rust config'
else
  echo 'not exist rust config'
  echo '' >> ~/.zshrc
  echo '# rust' >> ~/.zshrc
  echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.zshrc
fi

source $HOME/.cargo/env
