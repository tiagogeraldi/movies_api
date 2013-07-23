require 'spec_helper'

spec = YAML.load(ERB.new(File.read('config/database.yml')).result)
ActiveRecord::Base.establish_connection(spec['test'])

# Shoulda Matchers
require 'shoulda-matchers'

# EnumerateIt
require 'enumerate_it'

class ActiveRecord::Base
  include EnumerateIt
end

Dir['app/enumerations/*.rb'].each do |file|
  require File.expand_path(file)
end
