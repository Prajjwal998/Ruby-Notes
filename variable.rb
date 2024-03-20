# $global_var = 1
# class Global_V 
	# def print_global_var
		# puts "Global var= #$global_var"
	# end
# end

# gv = Global_V.new
# gv.print_global_var()

##########INSTANCE VARIABLE#############

# class Instance_V
	# def initialize(id)
      # @cust_id = id
   # end
   # def print()
      # puts "Customer id #@cust_id"
   # end
# end

# iv = Instance_V.new
# iv.print()

###########CLASS VARIABLE############

# class Class_V
	# @@class_v =3
	# def print()
		# puts "class varibale  : #@@class_v"
	# end
# end
# cv = Class_V.new
# cv.print()

###########Local variable#############

# class Local_V
	# def local_v()
		# local = 10
		# puts "local = #{local}"
	# end
# end
# l = Local_V.new()
# l.local_v()

############PSEUDO VARIABLE#################

# val = user.name.present? ? "hello" : "nil"

class Psuedo_V
	def initialize(v)
		@num = v
	end
	
	def print
		puts "value num = #{@num}"
	end
	
	def self.p
		puts "self is #{self}"
	end
end 

obj = Psuedo_V.new(3)
obj.print
Psuedo_V.p

puts "--file-- : #{__FILE__}"
puts "--line-- : #{__LINE__}"