lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'Crappies'
  s.version     = '0.0.0'
  s.date        = '2016-05-01'
  s.summary     = "Craps game"
  s.description = "A simple implementation of the Craps game"
  s.authors     = ["Nelson Senna"]
  s.email       = 'onelsonsenna@gmail.com'
  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.require_paths = ["lib"]
  s.license       = 'MIT'
end
