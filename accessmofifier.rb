# class MyClass
  # def public_method
    # puts "Calling private method from within the class..."
    # private_method
  # end

  # private

  # def private_method
    # puts "This is a private method"
  # end
# end

# obj = MyClass.new

# # Call public_method - which internally calls private_method
# obj.public_method

class MyClass
  def public_method(other)
    puts "Calling protected method from within the class..."
    other.protected_method
  end

  protected

  def protected_method
    puts "This is a protected method"
  end
end

class Subclass < MyClass
  def subclass_method
    puts "Calling protected method from subclass..."
    protected_method
  end
end

obj1 = MyClass.new
obj2 = MyClass.new
obj3 = Subclass.new

# Call public_method - which internally calls protected_method on another instance of MyClass
obj1.public_method(obj2)

# Call subclass_method - which internally calls protected_method from within the subclass
obj3.subclass_method

