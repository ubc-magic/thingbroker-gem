require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('magicbroker', '0.2.0') do |p|
  p.description    = "The MAGIC-Broker-2 gem"
  p.url            = "https://github.com/magic-liam/broker-gem-0.2.0.git"
  p.author         = "Roberto Calderon"
  p.email          = "roberto@robertocalderon.ca"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }  
