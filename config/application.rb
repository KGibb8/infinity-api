require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module InfinityAndBeyond
  class Application < Rails::Application
    config.load_defaults 5.1

    config.autoload_paths += Dir["#{config.root}/app/**/", "#{config.root}/lib/**/"]

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :patch, :options]
      end
    end

    config.generators.system_tests = nil
  end
end
