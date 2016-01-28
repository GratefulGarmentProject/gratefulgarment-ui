# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gratefulgarment/ui/version"

Gem::Specification.new do |spec|
  spec.name          = "gratefulgarment-ui"
  spec.version       = GratefulGarment::UI::VERSION
  spec.authors       = ["On-Site.com"]
  spec.email         = ["mjstone@on-site.com"]

  spec.summary       = "Grateful Garment UI Assets"
  spec.description   = "This is the UI asset gem for http://gratefulgarment.org/"
  spec.homepage      = "http://gratefulgarment.org/"
  spec.license       = "MIT, except for copyrighted material"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  raise "RubyGems 2.0 or newer is required to protect against public gem pushes." unless spec.respond_to?(:metadata)
  spec.metadata["allowed_push_host"] = "do_not_push"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 4.2"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.36"
end
