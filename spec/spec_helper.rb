
require 'rspec'
require 'simplecov'

# SimpleCov configuration
SimpleCov.start do
  # Ignore these paths
  add_filter '/vendor/bundle/'
end
SimpleCov.command_name "rspec"
SimpleCov.command_name "RSpec"


RSpec.configure do |config|
  config.color = true

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
end
