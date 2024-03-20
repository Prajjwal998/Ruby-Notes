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
		arr=[1,2,3,4,5,6]
		
		puts "for loop"
		for $i in 0..5
			print("#{$i}, ")
		end
		
		puts ""
		puts "for loop with array"
		for num in arr
			print num
		end
		
		puts ""
		puts "for loop with if condition"
		for i in arr
			if i>2
				print i
			end
		end
		
		puts ""
		puts "for each loop"
		(0..5).each do |i|
			print "#{i}, "
		end
	end
	
	def break_statement
	puts "break statement"
		for i in (0..5)
			if i == 2 then
				break
			end
			print i
			
		end
	end
	
	def break_statement
	puts "next statement"
		for i in (0..5)
			if i == 2 then
				next
			end
			print i
			
		end
	end
	
	def redo_statement
	puts "redo statement"
		for i in 0..5
			if i > 2 then
				print i
				redo
			end
		end
	end
	
	def retry_statement
	puts "retry statement"
		for i in (0..5)
			retry if i > 2
			puts "#{i}"
		end
	end
end 
obj = Loops.new

# obj.while_loop
# obj.while_modifier
# obj.until_statement #run while conditional is false.
# obj.until_modifier #run while conditional is false.
# obj.for_statement
# obj.break_statement
# obj.redo_statement
# obj.retry_statement