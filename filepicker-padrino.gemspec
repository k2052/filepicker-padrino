require File.expand_path('../lib/filepicker/padrino/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ken Erickson"]
  gem.email         = ["bookworm.productions@gmail.com"]
  gem.description   = %q{Makes integrating filepicker.io with padrino easy}
  gem.summary       = %q{Makes integrating filepicker.io with padrino easy}
  gem.homepage      = "https://github.com/bookworm/filepicker-padrino"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "filepicker-padrino"
  gem.require_paths = ["lib"]
  gem.version       = Filepicker::Padrino::VERSION

  gem.required_rubygems_version = ">= 1.3.6"
  gem.add_dependency "padrino"
end
