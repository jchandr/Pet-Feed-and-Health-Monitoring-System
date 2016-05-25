gem install bundler
bundle install
cd bin
rake db:migrate
cd ..
rake db:migrate RAILS_ENV=test