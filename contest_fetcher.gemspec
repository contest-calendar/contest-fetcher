# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'contest_fetcher/version'

Gem::Specification.new do |spec|
  spec.name          = "contest_fetcher"
  spec.version       = ContestFetcher::VERSION
  spec.authors       = ["Hiroyuki Sano"]
  spec.email         = ["sh19910711@gmail.com"]

  spec.summary       = %q{contest fetcher}
  spec.homepage      = "https://github.com/contest-calendar/contest-fetcher"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0' 

  spec.add_runtime_dependency "codeforces", "~> 0.0.0"
  spec.add_runtime_dependency "google-api-client", "~> 0.9.0"

  spec.add_development_dependency "pry", "~> 0.10.0"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0.0"
  spec.add_development_dependency "rspec", "~> 3.4.0"
  spec.add_development_dependency "vcr", "~> 3.0.0"
  spec.add_development_dependency "webmock", "~> 1.24.0"
end
