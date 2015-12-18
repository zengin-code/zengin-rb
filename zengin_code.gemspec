# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zengin_code/version'

Gem::Specification.new do |spec|
  spec.name          = "zengin_code"
  spec.version       = ZenginCode::VERSION.sub('-p', '.')
  spec.authors       = ["Sho Kusano"]
  spec.email         = ["rosylilly@aduca.org"]

  spec.summary       = %q{bank codes and branch codes for japanese}
  spec.description   = %q{bank codes and branch codes for japanese}
  spec.homepage      = "https://github.com/zengin-code/zengin-rb"
  spec.license       = "MIT"

  data_files = Dir['source-data/data/**/*.json']
  data_files += %w(source-data/data/updated_at source-data/data/md5)
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         += data_files
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
