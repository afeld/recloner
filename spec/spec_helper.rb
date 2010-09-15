$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'recloner'
require 'rspec'
require 'rspec/autorun'

Rspec.configure do |config|
  c.mock_with :rspec
end
