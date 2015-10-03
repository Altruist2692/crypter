# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crypter/version'

Gem::Specification.new do |spec|
  spec.name          = "crypter"
  spec.version       = Crypter::VERSION
  spec.authors       = ["Altruist2692"]
  spec.email         = ["altruist2692@gmail.com"]

  spec.summary       = %q{Implementation of different encryption/descryption security algorithms}
  spec.description   = %q{Implementation of all basic to high level of security algorithms for data encryption and decrytion. For example, RSA, DES, AES etc..}
  spec.homepage      = "https://github.com/Altruist2692/crypter"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "RubyGems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
