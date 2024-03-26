class Hashes
	def self.hash
		months = Hash.new ("march")
		puts "#{months[0]}"
		puts "#{months[110]}"
	end
	def self.hash1
		hash1 = Hash["a"=>97, "b"=>98]
		puts "#{hash1['a']}"
		puts "#{hash1['b']}"
	end 
	def self.hash2
		hash2 = Hash.new
		# hash2 = Hash.new("Month")
		hash2 = {"1" => "Jan","2" => "Mar",}
		keys = hash2.keys
		puts "#{keys}"
	end
	def self.methods
		hash1 = {"a"=>1,"b"=>2}
		
		hash2 = {"a"=>1,"b"=>2}
		puts hash1 == hash2 # true

		hash3 = {"a"=>1,"b"=>2}
		hash4 = {"b"=>2,"a"=>1}
		puts hash3 == hash4 # true
		
		puts "#{hash1["a"]}" # 1
		puts "#{hash1["c"]}" # 1# nil {default value if key not found}
		
		hash5 = {}
		hash5["a"]="a"
		hash5["b"]="b"
		puts hash5.inspect
		
		hash5.clear
		puts hash5.inspect
		
		#set default value
		hash6 = {"a"=>1,"b"=>2}
		puts hash6.default # nil
		puts hash6.default("c") # nil
		puts hash6["c"]
		hash6.default = "Not Found"
		puts hash6["c"]
		
		hash7 = {"a"=>1,"b"=>2}
		hashdeletevalue = hash7.delete("a")
		puts "hash7 delete value  : #{hashdeletevalue} "
		puts "hash7 : #{hash7.inspect} "
		
		hash8 = {"a"=>1,"b"=>2, "c"=>3}
		hash8.delete_if{|key, value| value.even?}
		puts "hash8 : #{hash8.inspect} "
		
		hash9 = {"a"=>1,"b"=>2, "c"=>3}
		hash9.each do |key,value|
			puts "hash9 =>#{key}: #{value}"
		end
		
		hash9.each_key do |key|
			puts "hash9 each_key => #{key}"
		end 
		
		hash9.each_key do |key|
			puts "hash9 each_key and hash[key] => #{key}: #{hash9[key]}"
		end 
		
		puts "hash9.empty : #{hash9.empty?}" # false
		
		puts "hash.fetch : #{hash9.fetch('a')}" # 1
		puts "hash.fetch : #{hash9.fetch('d','not found')}" # not found
		
		#hash.has_key?(key) [or] hash.include?(key) [or] hash.key?(key) [or] hash.member?(key):
		
		puts "hash9.has_key?('a') : #{hash9.has_key?('a')}" # true 
		puts "hash9.include?('d'): #{hash9.include?('d')}" # false 
		puts "hash9.key?('d') : #{hash9.key?('b')}" # true
		puts "hash9.member?('d'): #{hash9.member?('d')}" # false
		
		puts "hash9.has_value?('1') : #{hash9.has_value?(1)}" # true
		puts "hash9.has_value?('4') : #{hash9.has_value?(4)}" # false
		
		puts "hash9.value?(1) : #{hash9.value?(1)}" # true
		puts "hash9.value?(4) : #{hash9.value?(4)}" # false
		
		# puts "hash9.index(1) : #{hash9.index(1)}"# a
		# puts "hash9.index(1) : #{hash9.index(3)}"# nil
		
		# puts "hash9.indexes(['a','v']) : #{hash9.indexes(['a','v'])}"# [1,nil]
		
		# puts "hash9.indices(['a','v']) : #{hash9.indices(['a','v'])}"# [1,nil]
		
		#hash.invert (key become value &values become key) return new hash
		
		inverthash = hash9.invert
		puts "hash9.invert : #{inverthash.inspect}"
		
		#length
		puts "hash9.length : #{hash9.length}"
		#size
		puts "hash9.size : #{hash9.size}"
		
		#keys in array 
		keyarray = hash9.keys
		puts "hash9.keys : #{keyarray}"
		
		
		#hash.merge return new hash
		hasha = { "a" => 1, "b" => 2 }
		hashb = { "b" => 3, "c" => 4 }
		merged_hash = hasha.merge(hashb)
		puts "merged_hash : #{merged_hash.inspect}"  # Output: {"a"=>1, "b"=>3, "c"=>4}
	
		#hash.merge! same but not return new hash
		hasha = { "a" => 1, "b" => 2 }
		hashb = { "b" => 3, "c" => 4 }
		merged_hash = hasha.merge(hashb)
		puts "merged_hash : #{merged_hash.inspect}"  # Output: {"a"=>1, "b"=>3, "c"=>4}
		
		
		# hash.shift Removes a key-value pair from hash, returning it as a two-element array.

		hashc = { "a" => 1, "b" => 2, "c" => 3 }
		shifted_pair = hashc.shift
		puts "shifted_pair.inspect #{shifted_pair.inspect}"  # Output: ["a", 1]

		
		selected_pairs = hashc.select { |key, value| value > 1 }
		puts "selected_pairs.inspect: #{selected_pairs.inspect}"  # Output: {"b"=>2, "c"=>3}

		hashd = { "a" => 1, "b" => 2 }
		hashe = { "c" => 3, "d" => 4 }
		hashd.replace(hashe)
		puts "hashd.inspect : #{hashd.inspect}"  # Output: {"c"=>3, "d"=>4}
		
		hash = { "b" => 2, "a" => 1, "c" => 3 }
		sorted_array = hash.sort
		puts "sorted_array.inspect : #{sorted_array.inspect}"  # Output: [["a", 1], ["b", 2], ["c", 3]]

		hash = {}
		hash.store("a", 1)
		hash.store("b", 2)
		puts "hash.inspect : #{hash.inspect}"  # Output: {"a"=>1, "b"=>2}

		hash = { "a" => 1, "b" => 2 }
		array = hash.to_a
		puts "hash.to_a : #{array.inspect}"  # Output: [["a", 1], ["b", 2]]
		
		hash = { "a" => 1, "b" => 2 }
		same_hash = hash.to_hash
		puts "hash.to_hash :#{same_hash.inspect}"  # Output: {"a"=>1, "b"=>2}

		hash = { "a" => 1, "b" => 2 }
		string = hash.to_s
		puts "hash.to_s: #{string.inspect}"  # Output: "{\"a\"=>1, \"b\"=>2}"

		hash11 = { "a" => 1, "b" => 2 }
		hash22 = { "b" => 3, "c" => 4 }
		updated_hash = 
		puts "hash11.update(hash22) : #{updated_hash.inspect}"  # Output: {"a"=>1, "b"=>3, "c"=>4}
		
		
		#Returns a new array containing all the values of hash
		hash = { "a" => 1, "b" => 2, "c" => 3 }
values_array = hash.values
puts values_array.inspect  # Output: [1, 2, 3]
		
		#hash.values_at(obj, ...) Returns a new array containing the values from hash that are associated with the given key or keys.
		
		
		hash = { "a" => 1, "b" => 2, "c" => 3 }
selected_values = hash.values_at("a", "c")
puts selected_values.inspect  # Output: [1, 3]
		
		
		
		
		
		
		
		
		
		
	end
end
# Hashes.hash
Hashes.methods
