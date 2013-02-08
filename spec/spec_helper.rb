ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
#require 'headless'
require "paperclip/matchers"
require "rake"
#require File.expand_path("../../Rakefile", __FILE__)


# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|

  config.mock_with :rspec

  config.include Paperclip::Shoulda::Matchers
  config.include FactoryGirl::Syntax::Methods
#  config.include Devise::TestHelpers, type: :controller

  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false
  config.include RSpec::Rails::RequestExampleGroup,       type: :request,    
  example_group: { file_path: /spec\/api/ }

end
