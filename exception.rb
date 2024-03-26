class Exception
	def self.exception
		begin
		file = open("example.txt")
		if file
		puts "File opened successfully"
		end
		rescue
		fname = "example.txt"
		retry
		end
	end
	
	def self.raise
		begin
			puts "before raise"
			raise 'error error raise'
			puts "after raise"
		rescue
			puts "I am  Rescue"
		end
		puts "after begin end"
	end
	
	def self.ensure
		begin
			puts "before raise"
			raise 'error error raise'
			puts "after raise"
		rescue
			puts "I am  Rescue"
		ensure 
			puts "ensure block always execute"
		end
		puts "after begin end"
	end
	
	def self.else
		begin
			puts "before exception"
			raise 'error error raise'
			# puts "after raise"
		rescue Exception => e
			puts e.message
			puts e.backtrace.inspect
		else
			puts "conga no error"
		ensure 
			puts "ensure block always execute"
		end
		puts "after begin end"
	end
	
end 
# Exception.exception
# Exception.raise
# Exception.ensure
# Exception.else
