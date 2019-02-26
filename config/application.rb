require_relative 'boot'

require 'rails/all'

gateway = Braintree::Gateway.new(
  :environment => :sandbox,
  :merchant_id => ENV.fetch('BRAINTREE_MERCHANT_ID'),
  :public_key => ENV.fetch('BRAINTREE_PUBLIC_KEY'),
  :private_key => ENV.fetch('BRAINTREE_PRIVATE_KEY'),
)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Hornero
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
