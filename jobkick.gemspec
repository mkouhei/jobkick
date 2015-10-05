# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jobkick/version'

Gem::Specification.new do |spec|
  spec.name          = "jobkick"
  spec.version       = JobKick::VERSION
  spec.authors       = ["Kouhei Maeda"]
  spec.email         = ["mkouhei@palmtb.net"]
  spec.license       = 'GPL-3.0'

  spec.summary       = %q{Job kicker of CI.}
  spec.description   = %q{Kick the jobs of CI, your managed repositories.}
  spec.homepage      = 'https://github.com/mkouhei/jobkick'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", '~> 3.3', '>= 3.3.0'
  spec.add_development_dependency 'simplecov', '~> 0.10', '>= 0.10.0'
  spec.add_development_dependency 'rubocop', '~> 0.34', '>= 0.34.2'
end
