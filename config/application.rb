require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MediumDemo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    # config/application.rb

    config.i18n.default_locale = 'zh-TW'

    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = 'Taipei'
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
