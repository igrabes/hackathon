# Load the rails application
require File.expand_path('../application', __FILE__)

Dir.glob( "config/constants/*" ).each do |file|
  Kernel.const_set File.basename(file, ".yml").upcase, YAML::load_file(File.join(Rails.root, file))[Rails.env]
end

# Initialize the rails application
Hackathon::Application.initialize!
