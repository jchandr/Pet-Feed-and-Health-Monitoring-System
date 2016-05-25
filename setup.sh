sudo apt-get install build-essential curl git python-setuptools ruby
export HOMEBREW_BUILD_FROM_SOURCE=1
git clone https://github.com/Linuxbrew/linuxbrew.git ~/.linuxbrew
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ruby
gem install bundler
bundle install --without production
cd bin
rake db:migrate
cd ..