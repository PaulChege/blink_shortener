require_relative 'lib/blink_shortener/version'

Gem::Specification.new do |spec|
  spec.name          = "blink_shortener"
  spec.version       = BlinkShortener::VERSION
  spec.authors       = ["Paul Chege"]
  spec.email         = ["inco.pcn@gmail.com"]

  spec.summary       = %q{Blink Shortener is a Ruby API wrapper for bl.ink that shortens any url.}
  spec.homepage      = "https://github.com/PaulChege/blink_shortener"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/PaulChege/blink_shortener"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
