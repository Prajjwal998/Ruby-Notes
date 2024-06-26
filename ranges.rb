class Ranges
	def self.ranges

		(1..5)        #==> 1, 2, 3, 4, 5
		(1...5)       #==> 1, 2, 3, 4
		('a'..'d')    #==> 'a', 'b', 'c', 'd'

		(1..5).each do |n|
		print "#{n},"
		end 
		puts 
		(1...5).each do |n|
		print "#{n},"
		end 
		puts
		('a'..'d').each do |n|
		print "#{n},"
		end 
		puts
		#convert a range to a list using the to_a method.
		$, =","   # Array value separator
		range1 = (1..10).to_a
		range2 = ('a'..	'd').to_a

		puts "#{range1}"
		puts "#{range2}"
		
		digits = 0..9

		puts digits.include?(5)
		ret = digits.min
		puts "Min value is #{ret}"

		ret = digits.max
		puts "Max value is #{ret}"

		ret = digits.reject {|i| i < 5 }
		puts "Rejected values are #{ret}"

		digits.each do |digit|
		puts "In Loop #{digit}"
		end

		score = 70

		result = case score
			when 0..40 then "Fail"
			when 41..60 then "Pass"
			when 61..70 then "Pass with Merit"
			when 71..100 then "Pass with Distinction"
			else "Invalid Score"
		end

		puts result

		if ((1..10) === 5)
		   puts "5 lies in (1..10)"
		end

		if (('a'..'j') === 'c')
		   puts "c lies in ('a'..'j')"
		end

		if (('a'..'j') === 'z')
		   puts "z lies in ('a'..'j')"
		end







	end
end 
Ranges.ranges