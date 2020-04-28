#!/usr/bin/zsh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# 用来编译安装 ruby
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# 用来管理 gemset, 可选, 因为有 bundler 也没什么必要
git clone git://github.com/jamis/rbenv-gemset.git  ~/.rbenv/plugins/rbenv-gemset
# 通过 rbenv update 命令来更新 rbenv 以及所有插件, 推荐
git clone git://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update
# 使用 Ruby China 的镜像安装 Ruby, 国内用户推荐
git clone git://github.com/AndorChen/rbenv-china-mirror.git ~/.rbenv/plugins/rbenv-china-mirror

if grep "rbenv" ~/.zshrc > /dev/null
then
  echo 'exist rbenv config'
else
  echo 'not exist rbenv config'
  echo '' >> ~/.zshrc
  echo '# rbenv' >> ~/.zshrc
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(rbenv init -)"' >> ~/.zshrc
fi

# source zshrc
zsh ~/.zshrc

sudo apt install -y libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common
sudo apt install -y libpq-dev libsqlite3-dev sqlite3

ruby_version=2.7.1
rbenv install $ruby_version -v
rbenv global $ruby_version
unset ruby_version

