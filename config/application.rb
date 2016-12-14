require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Testbed
  class Application < Rails::Application
    
    config.to_prepare do
      Dir.glob(File.join(Rails.root, "app/services", "**/*.rb")).each do |c|
        require_dependency(c)
      end
    end




      config.to_prepare do
        Dir.glob(File.join(Rails.root, "app/decorators", "**/*_decorator*.rb")).each do |c|
          require_dependency(c)
        end
      end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
