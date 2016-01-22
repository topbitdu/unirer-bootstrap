$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'unirer/bootstrap/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'unirer-bootstrap'
  spec.version     = Unirer::Bootstrap::VERSION
  spec.authors     = [ 'Topbit Du' ]
  spec.email       = [ 'topbit.du@gmail.com' ]
  spec.homepage    = 'https://github.com/topbitdu/unirer-bootstrap'
  spec.summary     = 'The Unirer Bootstrap resource representation engine includes Bootstrap-based resource representation templates & snippets.'
  spec.description = 'Unirer (UNIfied Resource Representation) is a series of resource representation engines. The Bootstrap resource representation engine includes Bootstrap-based resource representation templates & snippets. Unirer (统一资源表现)是一系列的资源表现引擎。Bootstrap 资源表现引擎包括基于Bootstrap的资源表现模版和片段。'
  spec.license     = "MIT"

  spec.files         = Dir[ '{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc' ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = [ 'lib' ]

  spec.add_dependency 'rails', '~> 4.2'
  spec.add_dependency 'pg',    '~> 0'

end
