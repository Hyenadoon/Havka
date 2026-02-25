require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TodoApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # config/initializers/action_mailbox_imap.rb
if ENV["ACTION_MAILBOX_INGRESS"] == "imap"
  Rails.application.config.action_mailbox.imap = {
    address: ENV["IMAP_ADDRESS"],
    port: ENV.fetch("IMAP_PORT", "993").to_i,
    user_name: ENV["IMAP_USERNAME"],
    password: ENV["IMAP_PASSWORD"],
    ssl: ENV.fetch("IMAP_SSL", "true") == "true"
  }
end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
