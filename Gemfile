source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

gem 'sass-rails' ,'~>6.0.0'
gem 'bootstrap-sass' , '~>3.4.1'
gem 'autoprefixer-rails', '~> 9.8', '>= 9.8.6.3'
gem 'bcrypt', '~>3.1.16'
gem 'rake' ,'~>13.0.1'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'

gem 'webdrivers', '~> 4.4', '>= 4.4.1'
gem 'capybara-selenium', '~> 0.0.6'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
	gem 'rspec-rails', '4.0'
  gem 'faker', '~> 2.13'
  gem 'factory_bot_rails', '~> 6.1'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  gem 'capybara', '3.33.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard', '~> 2.16', '>= 2.16.2'
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3'
  gem 'guard-cucumber', '~> 3.0'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
