require_relative  "lib/blink_shortener/version"

Gem::Specification.new do |spec|
  spec.name          = "blink_shortener"
  spec.version       = BlinkShortener::VERSION
  spec.authors       = ["Paul Chege"]
  spec.email         = ["inco.pcn@gmail.com"]

  spec.summary       = %q{Blink Shortener is a Ruby API wrapper for bl.ink that shortens any url.}
  spec.homepage      = "https://github.com/PaulChege/blink_shortener"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/PaulChege/blink_shortener"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'httparty', '>= 0.15.6', '< 0.19.0'
  spec.add_development_dependency 'bundler', '~> 0'
  spec.add_development_dependency 'rake', '~> 12.3', '>= 12.3.3'
end