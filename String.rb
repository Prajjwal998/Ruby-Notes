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
		
		str = "prajjwal"
		str1 = "Singh"
		str2 = "prajjwal,pratap singh "
		str3 = "pps"
		str4 = "hello"
		puts  "str.length : #{str.length}"
		puts  "str.size : #{str.size}"
		puts  "str.empty? : #{str.empty?}"
		puts  "str.bytesize : #{str.bytesize}"
		# puts  "str.count : #{str.count}"
		# puts  "str.count ra : #{str.count('jj')}"
		a = "hello world"
		# Count occurrences of "lo"
		puts a.count("lo") #=> 5
		# Count occurrences of "lo" or "o"
		puts a.count("lo", "o") #=> 2
		# Count occurrences of "hello" excluding "l"
		puts a.count("hello", "^l") #=> 4
		
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
		
		puts "str4= hello , : #{str4['ell']}" #ell
		puts "str4= hello * 3, : #{"hello" * 3 }" 
		
		# sub replace first occurrence Return new String 
		puts "sub: #{str.sub("Singh","pratap")}" 
		
		# sub! replace first occurrence Return same String 
		puts "sub!: #{str.sub!("Singh","pratap")}"
		
		# gsub replace all occurrence Return new String
		puts "gsub: #{str.gsub("Singh","pratap")}" 

		# gsub! replace all occurrence Return same String
		puts "gsub!: #{str.gsub!("Singh","pratap")}" 
	
		puts "str2 : #{str2}" #  prajjwal,pratap singh
		puts "index ing: #{str2.index("ing")}"
		puts "rindex ing: #{str2.rindex("ing")}"
		puts "include? singh: #{str2.include?("singh")}" #true of false 
		
		puts "match singh: #{str2.match("singh")}" 
		puts "match singh: #{str2.match("pra",11)}" #index ke baad se search krta hai
		puts "match? singh: #{str2.match?("singh")}" #true of false 
		puts "match? singh: #{str2.match("pra",11)}" # true or false index ke baad se search krta hai
		
		puts "start_with? Pra/pra: #{str2.start_with?("Pra")}"  # Returns true if any pattern matches the beginning, false otherwise
		puts "end_with? singh: #{str2.end_with?("singh")}"  # Returns true if any pattern matches the beginning, false otherwise
		
		puts "== 'pps' == 'PPS': #{"pps" == "PPS"}" # not check type
		puts "== 'pps' == 'PPS': #{"pps" == "pps"}"
		puts "=== (1..5) === 7: #{(1..5) === 4}"
		puts "'pps'.eql?('pps'): #{"pps".eql?("pps")}" # check type also 
		puts "'foo'.casecmp?('FOO'): #{'foo'.casecmp?('FOO')}" #true false capital samll any type unicode 

		'foo'.casecmp('foo') # => 0
		'foo'.casecmp('food') # => -1 -1 if other_string.downcase is larger.
		'food'.casecmp('foo') # => 1 1 if other_string.downcase is smaller.
		'FOO'.casecmp('foo') # => 0
		'foo'.casecmp('FOO') # => 0 if the two are equal.
		'foo'.casecmp(1) # => nil nil if the two are incomparable.
		
		puts 5 <=> 10   # -1 if the first value is less than the second value.
		puts 10 <=> 5   # 1 if the first value is greater than the second value.
		puts 10 <=> 10  # 0  if the first value is equal to the second value.	

		split = str2.split(",")
		puts "split: #{split}"
		puts "join: #{split.join(" ")}"
		
		puts "center: #{str3.center(20, "-")}"
		puts "center: #{str3.ljust(20, "-")}"
		puts "center: #{str3.rjust(20, "-")}"
		
	end
end 
Strings.string_methods
