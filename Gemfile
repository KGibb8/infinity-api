source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'jbuilder'
gem 'rack-cors', :require => 'rack/cors'
gem 'rails', '~> 5.1.4'
gem 'redis'
gem 'responders'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sidekiq'
gem 'will_paginate'

group :development, :test do
  gem 'awesome_print'
  gem 'pry-byebug'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
