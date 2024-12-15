```ruby
# Better approaches to manage instance variables:

# 1. Using attr_accessor with careful consideration (only if modification is intended):
class MyClass3
  attr_accessor :value #Caution: Allows modification
  def initialize(value)
    @value = value
  end
end

# 2. Defining a setter method for controlled modification
class MyClass4
  attr_reader :value
  def initialize(value)
    @value = value
  end

  def update_value(new_value)
    @value = new_value
  end
end

# 3. Freezing the object to prevent modification (if immutability is desired):
class MyClass5
  attr_reader :value
  def initialize(value)
    @value = value.freeze #Freeze value to prevent modification
  end
end

my_object5 = MyClass5.new(10)
#my_object5.instance_variable_set('@value', 20) # This would raise an exception
puts my_object5.value #=> 10
```