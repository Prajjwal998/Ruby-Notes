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
		puts  "str.bytesize : #{str.bytesize}" #Returns the length of str in bytes.
		# puts  "str.count : #{str.count}"
		# puts  "str.count ra : #{str.count('jj')}"
		a = "hello world"
		
		puts str + str1
		
		puts "str4= hello * 3, : #{"hello" * 3 }" 
		puts "<< CONCATE : #{str << " " << str1}"

		puts 5 <=> 10   # -1 if the first value is less than the second value.
		puts 10 <=> 5   # 1 if the first value is greater than the second value.
		puts 10 <=> 10  # 0  if the first value is equal to the second value.	

		puts "== 'pps' == 'PPS': #{"pps" == "PPS"}" # not check type
		puts "== 'pps' == 'PPS': #{"pps" == "pps"}"
		puts "=== (1..5) === 7: #{(1..5) === 4}"
		puts "'pps'.eql?('pps'): #{"pps".eql?("pps")}" # check type also 
		puts "'foo'.casecmp?('FOO'): #{'foo'.casecmp?('FOO')}" #true false capital samll any type unicode 

		str = "hello"
		hash_code = str.hash
		puts hash_code.inspect  # Output: 586926698

		# hex Treats leading characters from str as a string of hexadecimal digits (with an optional sign and an optional 0x) and returns the corresponding number. Zero is returned on error.

		"0x0a".hex     #=> 10
		"-1234".hex    #=> -4660
		"0".hex        #=> 0
		"wombat".hex   #=> 0



		puts str[0]
		puts str[0..3]
		puts str[0...3]
		puts str.slice(0..4)
		
		a = "hello there"

		a[1]                   #=> "e"
		a[2, 3]                #=> "llo"
		a[2..3]                #=> "ll"

		a[-3, 2]               #=> "er"
		a[7..-2]               #=> "her"
		a[-4..-2]              #=> "her"
		a[-2..-4]              #=> ""

		a[11, 0]               #=> ""
		a[11]                  #=> nil
		a[12, 0]               #=> nil
		a[12..-1]              #=> nil

		# slice! Deletes the specified portion from str, and returns the portion deleted.
		string = "this is a string"
		string.slice!(2)        #=> "i"
		string.slice!(3..6)     #=> " is "
		string.slice!(/s.*t/)   #=> "sa st"
		string.slice!("r")      #=> "r"
		string                  #=> "thing"

		# capitalize upcase downcase swapcase
		puts str #prajjwal pratap
		puts "CAPITALIZE: #{str.capitalize}"# return new string Prajjwal Pratap
		puts "CAPITALIZE!: #{str.capitalize!}"# return same string 
		puts "UPCASE: #{str.upcase}"# return new string PRAJJWAL PRATAP
		puts "UPCASE!: #{str.upcase!}"# return same string
		puts "DOWNCASE: #{str.downcase}"# return new string prajjwal pratap
		puts "DOWNCASE!: #{str.downcase!}"# return same string
		puts "SWAPCASE: #{str.swapcase}"# return new string PRAJJWAL PRATAP
		puts "SWAPCASE!: #{str.swapcase!}"# return same string
		
		# dump
		"hello \n ''".dump     #=> "\"hello \\n ''\""
		"\f\x00\xff\\\"".dump  #=> "\"\\f\\x00\\xFF\\\\\\\"\""

		#	casecmp	
		'foo'.casecmp('foo') # => 0
		'foo'.casecmp('food') # => -1 -1 if other_string.downcase is larger.
		'food'.casecmp('foo') # => 1 1 if other_string.downcase is smaller.
		'FOO'.casecmp('foo') # => 0
		'foo'.casecmp('FOO') # => 0 if the two are equal.
		'foo'.casecmp(1) # => nil nil if the two are incomparable.
	
		#center
		puts "center: #{str3.center(20, "-")}"
		puts "center: #{str3.center(20, "-")}"
		puts "center: #{str3.ljust(20, "-")}"
		puts "center: #{str3.rjust(20, "-")}"

		# char_array char array
		str = "hello"
		char_array = str.chars
		puts char_array.inspect  # Output: ["h", "e", "l", "l", "o"]

		str = "hello"
		char_array = str.each_char.to_a
		puts char_array.inspect  # Output: ["h", "e", "l", "l", "o"]

		# chop Returns a new String with the last character removed
		"string\r\n".chop   #=> "string"
		"string\n\r".chop   #=> "string\n"
		"string\n".chop     #=> "string"
		"string".chop       #=> "strin"
		"x".chop.chop       #=> ""

		# chr
		a = "abcde"
		a.chr    #=> "a"
		
		#clear
		a = "abcde"
		a.clear    #=> ""
		
		# concat
		a = "hello "
		a.concat("world", 33)      #=> "hello world!"
		a                          #=> "hello world!"
		b = "sn"
		b.concat("_", b, "_", b)   #=> "sn_sn_sn"

		#count
		# count occurrences of "lo"
		puts a.count("lo") #=> 5
		# count occurrences of "lo" or "o"
		puts a.count("lo", "o") #=> 2
		# Count occurrences of "hello" excluding "l"
		puts a.count("hello", "^l") #=> 4
		
		a = "hello world"
		a.count "lo"                   #=> 5
		a.count "lo", "o"              #=> 2
		a.count "hello", "^l"          #=> 4
		a.count "ej-m"                 #=> 4

		"hello^world".count "\\^aeiou" #=> 4
		"hello-world".count "a\\-eo"   #=> 4

		c = "hello world\\r\\n"
		c.count "\\"                   #=> 2
		c.count "\\A"                  #=> 0
		c.count "X-\\w"                #=> 3

		# delete return copy of str 
		# delete! return modify  str 
		"hello".delete "l","lo"        #=> "heo"
		"hello".delete "lo"            #=> "he"
		"hello".delete "aeiou", "^e"   #=> "hell"
		"hello".delete "ej-m"          #=> "ho"
		
		# delete prefix suffix
		# delete_prefix return copy of string
		"hello".delete_prefix("hel") #=> "lo"
		"hello".delete_prefix("llo") #=> "hello"
		# delete_prefix! return modify string
		"hello".delete_prefix!("hel") #=> "lo"
		"hello".delete_prefix!("llo") #=> nil
		# delete_suffix return copy of string
		"hello".delete_suffix("llo") #=> "he"
		"hello".delete_suffix("hel") #=> "hello"

		# delete_suffix return modify string
		"hello".delete_suffix!("llo") #=> "he"
		"hello".delete_suffix!("hel") #=> nil

		# each_byte Passes each byte in str to the given block, or returns an enumerator if no block is given.
		"hello".each_byte {|c| print c, ' ' }

		# each_char {|cstr| block } → str
		# each_char → an_enumerator
		# Passes each character in str to the given block, or returns an enumerator if no block is given.

		"hello".each_char {|c| print c, ' ' }

		puts "Strip: #{str.strip}"
		puts "rStrip: #{str.rstrip}"
		puts "lStrip: #{str.lstrip}" #return new string
		puts "lStrip!: #{str.lstrip!}" #return same string
		
		puts "str4= hello , : #{str4['ell']}" #ell
		
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
		
		
		split = str2.split(",")
		puts "split: #{split}"
		puts "join: #{split.join(" ")}"
		
	
		
		#Methods for Modifying a String
		puts "INSERT str4.insert(1,'i'): #{str4.insert(1,'i')}"		
		puts "INSERT str4.insert(-1,'z'): #{str4.insert(-1,'z')}"	

		# intern  Returns the Symbol corresponding to str, creating the symbol if it did not previously exist
		
		"Koala".intern         #=> :Koala
		s = 'cat'.to_sym       #=> :cat
		s == :cat              #=> true
		s = '@cat'.to_sym      #=> :@cat
		s == :@cat             #=> true
		
		# sub replace first occurrence Return new String 
		puts "sub: #{str.sub("Singh","pratap")}" 
		
		# sub! replace first occurrence Return same String 
		puts "sub!: #{str.sub!("Singh","pratap")}"
		
		# gsub replace all occurrence Return new String
		puts "gsub: #{str.gsub("Singh","pratap")}" 

		# gsub! replace all occurrence Return same String
		puts "gsub!: #{str.gsub!("Singh","pratap")}" 


		#Returns the successor to self. The successor is calculated by incrementing characters.
	
		# succ and next same same  Return new object
		# succ! and next! same same  modify same object

		#string of octal digits
		"123".oct       #=> 83
		"-377".oct      #=> -255
		"bad".oct       #=> 0
		"0377bad".oct   #=> 255

		# ord → integer
		# Returns the Integer ordinal of a one-character string.

		"a".ord         #=> 97


		'THX1138'.succ # => "THX1139"
		'<<koala>>'.succ # => "<<koalb>>"
		'***'.succ # => '**+'

		'00'.succ # => "01"
		'09'.succ # => "10"
		'99'.succ # => "100"
# succ
		'aa'.succ # => "ab"
		'az'.succ # => "ba"
		'zz'.succ # => "aaa"
		'AA'.succ # => "AB"
		'AZ'.succ # => "BA"
		'ZZ'.succ # => "AAA"

		# replace self with other content string
		s = 'foo'        # => "foo"
		s.replace('bar') # => "bar"
	
		# reverse return new string 
		'stressed'.reverse # => "desserts	
		# reverse! modify same string 
		s = 'stressed'
		s.reverse! # => "desserts"
		s          # => "desserts"
		
		# tr_s (selector, replacements) → new string
		# tr! (selector, replacements) → self or nil
		'hello'.tr_s('l', 'r')   #=> "hero"
		'hello'.tr_s('el', '-')  #=> "h-o"
		'hello'.tr_s('el', 'hx') #=> "hhxo"		
	end
end 
Strings.string_methods
