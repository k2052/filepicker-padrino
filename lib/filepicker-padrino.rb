require "filepicker/padrino/version"
require "filepicker/padrino/form_builder"
require "filepicker/padrino/helpers"

module Filepicker
  module Padrino
    def self.registered(app)
      app.helpers Helpers
    end
  end
end
