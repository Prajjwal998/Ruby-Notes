class Methods
	def self.method_simple
		puts "simple method"
	end
	
	def method_with_perameter(a,b)
		puts "method_with_perameter"
		puts "#{a},#{b}"
	end
	
	def method_with_perameter(a="a",b="b")
		puts "method_with_perameter default value"
		puts "#{a},#{b}"
	end
	
	def return_value_from_method(a,b)
		puts "return_value_from_method"
		c = a+b
		return c
	end
	
	def variable_number_of_parameter(*test)
		puts "variable_number_of_parameter"
		for i in 0...test.length
			puts "#{test[i]}"
		end
	end
	
	def Methods.class_method
		puts "class method"
	end
	
	
end 
Methods.method_simple
# obj.method_simple
# obj.method_with_perameter(1,2)
# obj.method_with_perameter
# puts "return #{obj.return_value_from_method(1,2)}"
# obj.variable_number_of_parameter "a", "6"
# Methods.class_method