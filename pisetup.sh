gem install bundler
bundle install --without production
cd bin
rake db:migrate
cd ..
rake db:migrate RAILS_ENV=test