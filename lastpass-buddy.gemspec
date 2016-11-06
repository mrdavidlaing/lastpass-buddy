# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','lastpass-buddy','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'lastpass-buddy'
  s.version = Sophia::VERSION
  s.author = 'David Laing'
  s.email = 'dlaing@pivotal.io'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'lastpass-buddy does useful things using lastpass as a backing store'
  s.licenses = ['MIT']
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','lastpass-buddy.rdoc']
  s.rdoc_options << '--title' << 'lastpass-buddy' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'lastpass-buddy'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.14.0')
  s.add_runtime_dependency('highline','~> 1.7')
end
