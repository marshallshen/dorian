require 'app_extensions'
require 'configurable_extensions'

class App < Configurable # :nodoc:
  extend AppExtensions
  extend ConfigurableExtensions

  # Settings in config/app/* take precedence over those specified here.
  config.name = Rails.application.class.parent.name

  # Personal information
  config.full_name    = 'Brandur Leach'
  config.display_name = 'brandur.org'

  # Configure modules below, comment the entire block out to disable a module

  for_module(:blog) do |mod|
    # Your blog's Atom feed
    mod.atom = 'http://mutelight.org/articles.atom'
  end

  for_module(:facts) do |mod|
    mod.http_api = 'https://facts-api.herokuapp.com'
    mod.frontend = 'https://facts.brandur.org'
  end

  for_module(:github) do |mod|
    mod.user = 'brandur'
  end

  for_module(:goodreads) do |mod|
    mod.key     = 'wqDUCoqpPtiL0LjflJQFrA'
    mod.shelf   = 'read'
    mod.user_id = '5896508'
  end

  for_module(:twitter) do |mod|
    # Your Twitter account
    mod.user = 'brandur'
  end
end
