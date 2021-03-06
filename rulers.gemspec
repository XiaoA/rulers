# frozen_string_literal: true

require_relative "lib/rulers/version"

Gem::Specification.new do |spec|
  spec.name = "rulers"
  spec.version = Rulers::VERSION
  spec.authors = ["Andrew Buckingham"]
  spec.email = ["abuckingham99@gmail.com"]

  spec.summary = %q{A Rack-based web framework - Rebuilding Rails}
  spec.description = %q{A Rack-based web framework - Rebuilding Rails}
  spec.homepage = %q{https://www.example.com}
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.2"

  # spec.metadata["allowed_push_host"] = %q{https://www.example.com}

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_runtime_dependency "rack", "~> 2.2.4"
  spec.add_runtime_dependency "erubis", "~> 2.7.0"
  spec.add_runtime_dependency "multi_json", "1.15.0"
  spec.add_runtime_dependency "sqlite3", "1.4.4"
  spec.add_development_dependency "rack-test", "~> 2.0.2"
  spec.add_development_dependency "minitest", "~> 5.16.1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
