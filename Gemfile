source 'https://rubygems.org'
ruby '2.2.0'

gem 'authem'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'bootstrap-will_paginate'
gem 'buildybuild'
gem 'decent_exposure', git: "git://github.com/voxdolo/decent_exposure.git", branch: "master"
gem 'haml-rails'
gem 'jbuilder', '~> 1.0.1'
gem 'jquery-rails'
gem 'rails', '4.2.0'
gem 'redcarpet', '~> 3.1.1'
gem 'pg'
gem 'thin'
gem 'turbolinks'
gem 'will_paginate', '~> 3.0.0'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'unicorn'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'launchy'
  gem 'rspec-rails'
end

group :development, :test do
  gem 'pry-rails'
  gem 'fabrication'
  gem 'database_cleaner'
end
