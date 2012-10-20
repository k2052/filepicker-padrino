require "filepicker/padrino/version"
require "filepicker/padrino/helpers"

module Filepicker
  module Padrino
    autoload :FormBuilder
    
    def self.registered(app)
      app.helpers Helpers
    end
  end
end
