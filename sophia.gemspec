# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','sophia','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'pivotal-sophia'
  s.version = Sophia::VERSION
  s.author = 'David Laing'
  s.email = 'dlaing@pivotal.io'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'sophia captures context so it can be copied between teams'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','sophia.rdoc']
  s.rdoc_options << '--title' << 'sophia' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'sophia'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.14.0')
  s.add_runtime_dependency('highline','~> 1.7')
end
