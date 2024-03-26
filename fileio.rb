class FileIO
	def self.fileio
		puts  "The puts statement instructs the program to display the value stored in the variable. This will add a new line at the end of each line it writes." 
		
		puts "The gets statement can be used to take any input from the user from standard screen called STDIN."
		puts "Enter name"
		name = gets 
		puts name
		
		#The putc Statement
		puts "Unlike the puts statement, which outputs the entire string onto the screen, the putc statement can be used to output one character at a time."
		str = "hello"
		putc str
		
		#print statement
		puts "The print statement is similar to the puts statement. The only difference is that the puts statement goes to the next line after printing the contents, whereas with the print statement the cursor is positioned on the same line."
	end
	def self.openandclosefile
		
		# createfile = File.new("name.txt", "w")
		# createfile.puts "this is  a new file "
		# createfile.puts "created in ruby "
		# createfile.close
		
		# File.open("name", "w") do |file|
			# file.puts "file.open "
		# end
		
		# open a file in read mode
		# File.open("name.txt", "r") do |file|
			# line1 = file.gets
			# file.puts "line 1 in file "
			# line2 = file.gets
			# file.puts "line 2 in file "
		# end

		File.open("example.txt", "w") do |file|
		# Write content to the file
		file.puts "This is the	contentof example.txt file.sxbaajnajnjsbas,jdajdnaj kqnjnqljn"
		end

		File.open("example.txt", "r") do |file|
		# Read the first 20 bytes from the file using sysread
		data = file.sysread(20)
		puts "First 20 bytes from file: #{data}"
		end
		
		aFile = File.new("example.txt", "r+")
		if aFile
		aFile.syswrite("ABCDEF")
		else
		puts "Unable to open file!"
		end
		
		
	end
end 
FileIO.openandclosefile