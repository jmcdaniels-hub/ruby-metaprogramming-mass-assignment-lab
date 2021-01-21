class Person
 def initialize(attributes)
  attributes.each do |key, value|
    self.classattr_accessor(key)
    self.send(("#{key}="), value)
 end 
end