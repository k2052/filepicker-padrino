require 'filepicker/padrino/version'
require 'filepicker/padrino/helpers'

module Filepicker
  module Padrino
    autoload :FormBuilder, 'filepicker/padrino/form_builder'

    def self.registered(app)
      app.helpers Helpers
    end
  end
end
