require_relative 'lib/ruby/study/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-study"
  spec.version       = Ruby::Study::VERSION
  spec.authors       = ["Rebwon"]
  spec.email         = ["msolo021015@naver.com"]

  spec.summary       = "study ruby"
  spec.description   = "study ruby"
  spec.homepage      = "https://msolo021015.medium.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://localhost:8080"

  spec.metadata["homepage_uri"] = "https://msolo021015.medium.com"
  spec.metadata["source_code_uri"] = "https://github.com/Rebwon"
  spec.metadata["changelog_uri"] = "https://github.com/Rebwon"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
