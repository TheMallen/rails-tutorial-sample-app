source 'https://rubygems.org'

gem 'wdm', '>= 0.1.0' if Gem.win_platform?
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]

gem 'rails'
gem 'bcrypt', '3.1.7'
gem 'bootstrap-sass',       '3.2.0.0'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'sdoc',         '0.4.0', group: :doc

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'spring'
end

group :test do
  gem 'minitest-reporters'
  gem 'mini_backtrace'
  gem 'guard-minitest'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'unicorn', '4.8.3'
end