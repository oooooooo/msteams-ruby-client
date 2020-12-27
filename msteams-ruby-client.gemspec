
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teams/version'

Gem::Specification.new do |spec|
  spec.name          = 'msteams-ruby-client'
  spec.version       = Teams::VERSION
  spec.authors       = ['oooooooo']
  spec.email         = ['60764+oooooooo@users.noreply.github.com']

  spec.summary       = 'Teams API Client.'
  spec.description   = 'Microsoft Teams API Client.'
  spec.homepage      = 'https://github.com/oooooooo/msteams-ruby-client'
  spec.license       = 'MIT'
  spec.files         = Dir['lib/**/*']
end
