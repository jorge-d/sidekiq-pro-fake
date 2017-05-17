# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/pro/version'

Gem::Specification.new do |spec|
  spec.name          = "sidekiq-pro"
  spec.version       = Sidekiq::Pro::VERSION
  spec.authors       = ["Dimitri Jorge"]
  spec.email         = ["jorge.dimitri@gmail.com"]

  spec.summary       = %q{This is not the official sidekiq-pro gem}
  spec.description   = %q{You should really pay attention to what you install... And you probably want to fetch the real sidekiq-pro gem from https://gems.contribsys.com}
  spec.homepage      = "https://github.com/jorge-d/sidekiq-pro-fake"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.post_install_message = "/!\\ ಠ‿ಠ Watch out ! This is not the real sidekiq-pro gem. /!\\"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
