require 'lita'
require 'wit'

Lita.load_locales Dir[File.expand_path(
  File.join('..', '..', 'locales', '*.yml'), __FILE__
)]

require 'lita/handlers/wit'
require 'lita/utils/bickle'
require 'lita/utils/aliases'
require 'lita/utils/alias_stripper'
require 'lita/utils/entities_navigator'
require 'lita/services/wit_client'
require 'lita/actions/base'
require 'lita/actions/weather'

Lita::Handlers::Wit.template_root File.expand_path(
  File.join('..', '..', 'templates'),
  __FILE__
)
