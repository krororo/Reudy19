lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "reudy/version"

Gem::Specification.new do |spec|
  spec.name          = "reudy"
  spec.version       = Reudy::VERSION
  spec.authors       = ['Glass_saga', 'krororo']
  spec.email         = [
    'glass.saga@gmail.com',
    'heavens.feel.7@gmail.com'
  ]

  spec.summary       = 'Reudy'
  spec.description   = '人工無脳ロイディ'
  spec.homepage      = 'https://github.com/krororo/reudy'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.3.0'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop", "~> 0.52.1"
end
