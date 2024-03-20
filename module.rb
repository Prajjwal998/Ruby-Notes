module Modules
	FIRST = "sunday"
	def week_in_month
		puts "4 week in month"
	end
	def week_in_year
		puts "52 in a  year"
	end
	def days
		puts "days"
	end
end

class Week
include Modules
	# puts Modules::FIRST
	# Modules.week_in_month
	# Modules.week_in_year
end

class Week2
extend Modules
end

obj = Week.new
obj.week_in_month
Week2.week_in_month


