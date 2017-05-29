# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sow_now/version'

Gem::Specification.new do |spec|
  spec.name          = 'sow_now'
  spec.version       = SowNow::VERSION
  spec.date          = '2017-05-21'
  spec.authors       = ["Liliana Alonzo"]
  spec.email         = 'lillyneveu@gmail.com'

  spec.summary       = "Learn what to plant when"
  spec.description   = "Helps people decide what to plant by month."
  spec.homepage      = "https://github.com/lillyneveu/sow_now.git"
  spec.license       = "MIT"
  spec.executables   << 'sow_now'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", ">= 0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"

  # spec.add_dependency "nokogiri"
  # spec.add_dependency "open-uri"
  # spec.add_development_dependency "pry", ">= 0"
end
