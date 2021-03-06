# frozen_string_literal: true

require_relative 'lib/icodebreaker_gem/version'

Gem::Specification.new do |spec|
  spec.name          = 'icodebreaker_gem'
  spec.version       = IcodebreakerGem::VERSION
  spec.authors       = ['JohnnyGsy']
  spec.email         = ['vanstrelok@gmail.com']

  spec.summary       = 'The codebreaker game.'
  spec.description   = 'Guess the secret code'
  spec.homepage      = 'https://github.com/JohnnyGsy/icodebreaker_gem'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.7.0'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rake', '~> 13.0'

  spec.add_development_dependency 'fasterer', '>= 0.9.0'
  spec.add_development_dependency 'i18n'
  spec.add_development_dependency 'pry', '>= 0.14.1'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.7'
  spec.add_development_dependency 'simplecov', '>= 0.21.2'
end
