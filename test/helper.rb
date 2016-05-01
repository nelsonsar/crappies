require 'minitest/autorun'
require 'crappies'

begin
  require 'scrutinizer/ocular'
  Scrutinizer::Ocular.watch!
rescue LoadError
  # Life goes on...
end
