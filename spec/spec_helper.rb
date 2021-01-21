require_relative '../lib/person'

RSpec.configure do |config|
  # config here
  class Person
    def initialize(attributes)
     attributes.each do |key, value|
       self.classattr_accessor(key)
       self.send(("#{key}="), value)
    end 
  end
end
