BEGIN {  
		puts "begin code"
	}
class Block 
	def block
		puts "you are im method "
		yield
		puts "again in method "
		yield
	end 
	
	def block1
		puts "you are im method "
		yield 1
		puts "again in method "
		yield 10
	end 
	
	def block2
		puts "you are im method "
		yield 1,2
		puts "again in method "
		yield 10, 100
	end 
	
	def test(&block)
		block.call
	end
	
	def begin_end
		
		END {
			puts "end code"
		}
		puts "main code"
	end 	
end 
obj = Block.new
# obj.block2 {|i,j| puts "you are in block #{i} #{j}"}
# obj.test { puts "Hello World!"}
obj.begin_end