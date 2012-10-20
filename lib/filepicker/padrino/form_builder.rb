module Filepicker
  module Padrino
    class FormBuilder < ::Padrino::Helpers::FormBuilder::StandardFormBuilder
      def filepicker_field(method, options = {})
        input_options = {
          'data-fp-apikey'           => settings.filepicker_api_key,
          'data-fp-button-text'      => options.fetch(:button_text, "Pick File"),
          'data-fp-button-class'     => options[:button_class],
          'data-fp-mimetypes'        => options[:mimetypes],
          'data-fp-option-container' => options[:container],
          'data-fp-option-multiple'  => false,
          'data-fp-option-services'  => Array(options[:services]).join(","),
        }

        type = options[:dragdrop] ? 'filepicker-dragdrop' : 'filepicker'
        @template.text_field_tag type, options
      end
    end
  end
end
