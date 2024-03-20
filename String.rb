class Strings
	def self.str
		puts "prajjwal'\\'"
		puts 'prajjwal"\\"'
		
		puts "sum #{2+2+3}"
		
		puts "prajjwal\nPratap\n"
		puts "123\r45 \n"
		
		puts "12\f34  \n"
		
		puts "prajjwal\b   \n"
		
		puts "\epra\ejjwal  \n"
		puts "pra\sjjwal  \n"

		puts "\124 \n"
		puts "\x4A \n"
	end
	def self.string_methods
	
		
		myStr = String.new("THIS IS TEST")
		foo = myStr.downcase

		puts "#{foo}"
		
		str = "   prajjwal   "
		str1 = "   Singh   "
		str2 = "prajjwal,pratap singh "
		str3 = "pps"
		puts  str.length
		puts str + str1
		puts str << " " << str1
		puts str[0]
		puts str[0..3]
		puts str[0...3]
		puts str.slice(0..4)
		puts str.capitalize
		puts str.upcase
		puts str.downcase
		puts "Swapcase: #{str.swapcase}"
		puts "Strip: #{str.strip}"
		puts "rStrip: #{str.rstrip}"
		puts "lStrip: #{str.lstrip}"
		puts "sub: #{str.sub("Singh","pratap")}" #replace first occourance 
		puts "sub: #{str.gsub("Singh","pratap")}" # repoace all occourance
		
		puts "include?: #{str.include?("singh")}"
		puts "index: #{str2.index("ing")}"
		puts "rindex: #{str2.rindex("ing")}"
		
		split = str2.split(",")
		puts "split: #{split}"
		puts "join: #{split.join(" ")}"
		
		puts "center: #{str3.center(20, "-")}"
		puts "center: #{str3.ljust(20, "-")}"
		puts "center: #{str3.rjust(20, "-")}"
		
		
		
	end
end 
Strings.string_methods
