
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "currency_to_words/version"

Gem::Specification.new do |spec|
  spec.name          = "currency_to_words"
  spec.version       = CurrencyToWords::VERSION
  spec.authors       = ["Jakub Malina", "Kamil Kukura"]
  spec.email         = ["majak108@gmail.com", "kamil.kukura@pentatri.cz"]

  spec.summary       = %q{Currency amount to words converter for Rails}
  spec.description   = %q{Rails 5 helper to_words that displays a currency amount in words (eg. 'one hundred dollars')}
  spec.homepage      = "https://github.com/kamk/currency_to_words"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_runtime_dependency "activesupport", "~> 5.0"
  spec.add_runtime_dependency "actionpack", "~> 5.0"
  spec.add_runtime_dependency "railties", "~> 5.0"
end
