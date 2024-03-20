class Ifelse
	def if_else(a,b)
		puts "if else method"
		if a>b
			puts "A is Greater"
		else
			puts "B is Greater"
		end
	end
	
	def if_eleif(a,b)
		puts "if elsif method"
		if a>b
			puts "A is Greater2"
		elsif a<b
			puts "B is Greatere2"
		else
			puts "both equal2"
		end
	end
end 
# obj = Ifelse.new
# obj.if_else(2,3)
# obj.if_else(21,3)
# obj.if_eleif(3,1)
# obj.if_eleif(3,3)

########### IF MODIFIer  #####################
class If_modifire 
	def if_modifire(a)
		puts "if Modifire Method"
		puts "if modifier run" if a>=10
	end
end
# obj=If_modifire.new
# obj.if_modifire(1)

############## UNLESS STATEMENT  ################

class Unless #Executes code if conditional is false
	def unless_statement(a)
		puts "Unless statement method"
		unless a>=2
			puts "a is less then"
		else 
			puts "a is greater then"
		end
	end
	
	def unless_modifier(a)
		puts "Unless modifier method"
		puts "if modire a=1" if a 
		puts "unless modire a=1" unless a
		puts "unless modire a=false" unless a
	end
end
# obj = Unless.new
# obj.unless_statement(1)
# obj.unless_modifier(1)
# obj.unless_modifier(false)

################# CASE STATEMENT ################
class Case
	puts "case statement"
	def case_statement(grade)
		case grade
			when "A"
				puts "Excellent"
			when "B"
				puts "good"
			when "C"
				puts "fair"
			when "D"
				puts "fail"
			else 
				puts "repeat"
		end
	end
end
obj= Case.new
obj.case_statement("A")
obj.case_statement("D")
obj.case_statement("X")