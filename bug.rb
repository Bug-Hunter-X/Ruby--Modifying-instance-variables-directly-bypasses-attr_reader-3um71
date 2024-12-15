```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

end

my_object = MyClass.new(10)
puts my_object.value #=> 10

#Now attempting to modify value directly
my_object.instance_variable_set('@value', 20)
puts my_object.value #=> 20

#However, unexpected behavior when using attr_reader
class MyClass2
  attr_reader :value
  def initialize(value)
    @value = value
  end
end
my_object2 = MyClass2.new(10)
puts my_object2.value #=> 10

#Attempting to modify value directly with attr_reader still works unexpectedly.
my_object2.instance_variable_set('@value', 20)
puts my_object2.value #=> 20
```