	$i = 0
	$num = 5	
class Loops
	def while_loop 
	puts "while loop"
	while $i <= $num do
			print ("#{$i}, ")
			$i += 1
		end
	end
	
	def while_modifier
		puts "while modifier"
		begin
			print ("#{$i}, ")
			$i += 1
		end while $i <= $num
	end
	
	def until_statement #run while conditional is false.
		puts "until statement"
			
		until $i >= $num do
			print("#{$i}, ")
			$i += 1
		end
	end
	
	def until_modifier
		puts "until modifier"
		begin
			print ("#{$i}, ")
			$i += 1
		end until $i > $num
	end
	
	def for_statement
		
	end
end 
obj = Loops.new

# obj.while_loop
# obj.while_modifier
# obj.until_statement #run while conditional is false.
obj.until_modifier #run while conditional is false.