# Filepicker::Padrino

Adds form, image_tag, and download/save helpers to help you get up and running with [filepicker.io](http://filepicker.io) in Padrino.

A port of [filepicker-rails](https://github.com/Filepicker/filepicker-rails) by Max Tilford to Padrino.
Very little code was changed so if you'd like to thank someone then thank him!

## Installation

Add this line to your application's Gemfile:

    gem 'filepicker-padrino'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install filepicker-padrino

Register it with Padrino in app/app.rb:

    register Filepicker::Padrino

Set your API Key in app/app.rb:

    set :filepicker_padrino_api_key, 'XXXXXX'

Add the filepicker.io javascript library to your layout:

    <%= filepicker_js_include_tag %>

## Usage

### Adding an upload field to your form:

    <%= filepicker_form_for @user, path do |f| %>
      <div>
        <%= f.label :avatar_url, "Upload Your Avatar:" %>
        <%= f.filepicker_field :avatar_url %> <!-- User#avatar_url is a regular string column -->
      </div>

      <%= f.submit %>
    <% end %>

### Note the usage of:

    <%= filepicker_form_for @user, path do |f| %>

### Instead of the typical:

    <%= form_for @user, path do |f| %>

Full options list:
* button_text - The text of the upload button.
* button_class - The class of the upload button.
* mimetypes - The file types you want to support for this upload. Ex: "image/png,text/*"
* container - Where to show the file picker dialog can be "modal", "window" or the
of an iframe on the page.
* services - What services your users can upload to. Ex: "BOX, COMPUTER, FACEBOOK".

### Displaying an image:

    <%= filepicker_image_tag @user.avatar_url, w: 160, h: 160, fit: 'clip' %>

See [the filepicker.io documentation](https://developers.filepicker.io/docs/web/#fpurl-images) for the full options list.

### Allowing the user to download a file (or upload it to any of the supported services)

    <%= filepicker_save_button "Save", @user.avatar_url, "image/jpg" %>

Full options list:

* container - Where to show the file picker dialog can be "modal", "window" or the
of an iframe on the page.
* services - What services your users can upload to. Ex: "BOX, COMPUTER, FACEBOOK".
* save_as_name - A recommended file name. The user can override this.


## Support

If you found this repo useful please consider supporting me on [Gittip](https://www.gittip.com/k2052) or sending me some
bitcoin `1csGsaDCFLRPPqugYjX93PEzaStuqXVMu`

