class Operator 
	#arithmetic operator
	a=4
	b=2
	x=1
	z=1
	puts "#{a+b}"
	puts "#{a-b}"
	puts "#{a*b}"
	puts "#{a/b}"
	puts "#{a%b}"
	puts "#{a**b}"
	
	puts "comparision operator"
	puts "#{a==b}"
	puts "#{a!=b}"
	puts "#{a>b}"
	puts "#{a<b}"
	puts "#{a>=b}"
	puts "#{a<=b}"
	puts "#{a<=>b}"
	puts "#{(1..3)===a}" #1,2,3 
	puts "#{(1...3)===a}" #1,2
	puts "#{x.eql?(z)}"
	array1 = [1, 2, 3]
	array2 = [1, 2, 3]
	array3 = array1
	puts array1.equal?(array2) 
	puts array1.equal?(array3)
	
	puts "assignment operator"
	c=0#a=4,b=2
	c=a+b
	puts "#{c}"
	c+=a
	puts "#{c}"
	c-=a
	puts "#{c}"
	c*=a
	puts "#{c}"
	c/=a
	puts "#{c}"
	c%=a
	puts "#{c}"
	c**=a
	puts "#{c}"
	
	puts "logical operator"
	t=true
	f=false
	puts "#{t and t}"
	puts "#{t and f}"
	puts "#{t or f}"
	puts "t&&f  #{t && f}"
	puts "t&&t  #{t && t}"
	puts "t||t  #{t || t}"
	
	#turnery 
	age =18
	res= age>=18? "adult" : "minor"
	puts "#{res}"
	
	puts "defined?"
	puts "#{defined? a}"
	puts "#{defined? m}"

=begin
Double Colon Operator (::):

The double colon operator is used to access constants, modules, or nested classes within a module or class.
It is used to reference constants or nested elements within modules or classes.
It can also be used to call class methods or access nested modules/classes without creating an instance.
=end
	
end