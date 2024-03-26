class Iterators
	def self.iterators
		arr = [1,2,3,4,5]
		arr.each do |n|
		print ", #{n}"
		end
		
		
		#The collect iterator returns all the elements of a collection.
		arr1 = arr.collect #not working
		puts "#{arr1}"
		
		a = [1,2,3,4,5]
		b = a.collect{|x| 10*x}
		puts b
	end
end 
Iterators.iterators