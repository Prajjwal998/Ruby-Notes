# arr=[1,2,3,4,5]

# arr.each do |i|
# puts i
# end

# hsh = color ={"black"=>0, "red"=>10}
# hsh.each do |key , value|
# print key, "=", value, "\n"
# end

# (5..11).each do |n|
# print n, ","
# end
# puts "\n"
# (5...11).each do |n|
# print n, ","
# end

# arr = Array.new  #creating array 
arr1 = Array.new(20)#creating array

#CREATING @D ARRAY 

array = Array.new(3) {Array.new(3)} # [{}{}{}]

arr = [1, 2, 3, 4, 5, 6]

puts "count of arr: #{arr.count}" #6
puts "size of arr: #{arr.size}" #6
puts "size of arr: #{arr.length}" #6
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]
arr.at(1) #=> 2
arr.empty? # false
arr.include?('a') #false
arr.at(0) # 1
arr.at(-1) # 6

# arr.fetch(100) #out of bond exception
arr.first #return first element 1
arr.last #return last element 6
arr.take(3) #return first 3 element 1,2,3
arr.drop(3) #return last 3 element  4,5,6
dropwhile = arr.drop_while {|i| i <3}
puts "dropwhile : #{dropwhile}"

# ADD ELEMENT
arrnew = [1,2,3,6]
arrnew << 4
puts "append << #{arrnew}" # single element add in last
puts arrnew.inspect

arrnew.push(5,6) # multiple element add in last
puts "push elements  #{arrnew}" # 

arrnew.unshift(5,6) # add in first index
puts "unshift  #{arrnew}" # 

arrnew.insert(0,"a") # add element at any index
puts "insert  #{arrnew}" # 

arrnew.insert(0,"b", "c") # add multiple element at any index
puts "insert  #{arrnew}" # 

#REMOVING ELEMENT
arrnew.pop() # remove from last element and returnputs 
puts "pop  #{arrnew}"

arrnew.shift() # remove in first element and return
puts "shift  #{arrnew}" # 


arrnew.delete_at(1) #delete at specific index
puts "delete_at  #{arrnew}"

arrnew.delete(6) #delete all occurrence of same value 
puts "delete  #{arrnew}"

  # original array is modified
#[1,2,3,4,5]
puts "delete_if: #{arr.delete_if {|a| a<4}}"#4,5
puts "keep_if: #{arr.keep_if {|a| a<4}}"#1,2,3


arrnew.compact #delete all nil values 
puts "compact  #{arrnew}"

#return new array
arrnew.uniq #remove duplicates all values 
puts "uniq  #{arrnew}"

b = [["student","sam"], ["student","george"], ["teacher","matz"]]
b.uniq {|s| s.first}   # => [["student", "sam"], ["teacher", "matz"]]

#not return new array    uniq!
a = [ "a", "a", "b", "b", "c" ]
a.uniq!   # => ["a", "b", "c"]

b = [ "a", "b", "c" ]
b.uniq!   # => nil

c = [["student","sam"], ["student","george"], ["teacher","matz"]]
c.uniq! {|s| s.first}   # => [["student", "sam"], ["teacher", "matz"]]

# union 
#return new array excude any duplicates
# It compares elements using their hash and eql? methods for efficiency.
["a", "b", "c"].union( ["c", "d", "a"] )#=> [ "a", "b", "c", "d" ]
["a"].union( ["e", "b"], ["a", "c", "b"])#=> ["a", "e", "b", "c" ]
[ "a" ].union #=> [ "a" ]


# sort reverse

arr.sort
arr.sort {|a, b| b<=>a}
arr.sort.reverse!

strarr = %w[a,b,c,d,e,f]
str =""
strarr.reverse_each {|ele| str += "#{ele}"}
puts "str : #{str}"

puts "arr : #{arr}"
a=arr.map {|i| 3*i}
puts "arr : #{a}"
# arr.map! {|i| 2**i}
puts "arr : #{arr}"
  
  # original array is not modify
select=arr.select {|i| i<2}
puts "select : #{select}"



  # original array is not modify return new array
try = [ 1, 1, 3, 5 ] & [ 3, 2, 1, 1 ]   
puts "try : #{try}" # return comman [1,3]


#ary * int → new_aryclick
try1=[ 1, 2, 3 ] * 2 #=> [ 1, 2, 3, 1, 2, 3 ]
puts "try1 : #{try1}" #

# ary * str → new_string
try2=[ 1, 2, 3 ] * ","  #=> "1,2,3"
puts "try2 : #{try2}" # 

#ary + other_ary → new_ary
[ 1, 2, 3 ] + [ 4, 5 ]#=> [ 1, 2, 3, 4, 5 ]
a = [ "a", "b", "c" ]
c = a + [ "d", "e", "f" ]
c  #=> [ "a", "b", "c", "d", "e", "f" ]
a  #=> [ "a", "b", "c" ]

#ary - other_ary → new_ary
[1, 1, 2, 2, 3, 4, 5] - [1, 2, 4]#[3, 3, 5 ]


#ary <=> other_ary → -1, 0, +1 or nil

[ "a", "a", "c" ]<=> [ "a", "b", "c" ]#=> -1
[ 1, 2, 3, 4, 5, 6 ]<=>[ 1, 2 ] #=> +1
[ 1, 2 ] <=> [ 1, :two ]  #=> nil

#ary == other_ary → bool
[ "a", "c" ] == [ "a", "c", 7 ]#=> false
[ "a", "c", 7 ] == ["a", "c", 7]#=> true
[ "a", "c", 7 ] == ["a", "d", "f"]#=> false

ary[index] → obj or nil
ary[start, length] → new_ary or nil
ary[range] → new_ary or nil
slice(index) → obj or nil
slice(start, length) → new_ary or nil
slice(range) → new_ary or nil

a = [ "a", "b", "c", "d", "e" ]
a[2] +  a[0] + a[1]    #=> "cab"
a[6]                   #=> nil
a[1, 2]                #=> [ "b", "c" ]
a[1..3]                #=> [ "b", "c", "d" ]
a[4..7]                #=> [ "e" ]
a[6..10]               #=> nil
a[-3, 3]               #=> [ "c", "d", "e" ]
# special cases
a[5]                   #=> nil
a[6, 1]                #=> nil
a[5, 1]                #=> []
a[5..10]               #=> []


a = Array.new
a[4] = "4";  #=> [nil, nil, nil, nil, "4"]
a[0, 3] = [ 'a', 'b', 'c' ] #=> ["a", "b", "c", nil, "4"]
a[1..2] = [ 1, 2 ] #=> ["a", 1, 2, nil, "4"]
a[0, 2] = "?"      #=> ["?", 2, nil, "4"]
a[0..2] = "A"      #=> ["A", "4"]
a[-1]   = "Z"      #=> ["A", "Z"]
a[1..-1] = nil     #=> ["A", nil]
a[1..-1] = []      #=> ["A"]
a[0, 0] = [ 1, 2 ] #=> [1, 2, "A"]
a[3, 0] = "B"      #=> [1, 2, "A", "B"]


bsearch {|x| block } → elem
ary = [0, 4, 7, 10, 12]
ary.bsearch {|x| x >=   4 } #=> 4
ary.bsearch {|x| x >=   6 } #=> 7
ary.bsearch {|x| x >=  -1 } #=> 0
ary.bsearch {|x| x >= 100 } #=> nil

#clear → ary
#Removes all elements from self.

a = [ "a", "b", "c", "d", "e" ]
a.clear    #=> [ ]

#collect {|item| block} → new_ary
#collect → Enumerator

a = [ "a", "b", "c", "d" ]
a.collect {|x| x + "!"}#=> ["a!", "b!", "c!", "d!"]
a.map.with_index {|x,i| x * i} #=> ["", "b", "cc", "ddd"]
a    #=> ["a", "b", "c", "d"]

# collect! {|item| block } → ary
# collect! → Enumerator

a = [ "a", "b", "c", "d" ]
a.map! {|x| x + "!" }
a #=>  [ "a!", "b!", "c!", "d!" ]
a.collect!.with_index {|x, i| x[0...i] }
a #=>  ["", "b", "c!", "d!"]


# combination(n) {|c| block} → ary
# combination(n) → Enumerator
a = [1, 2, 3, 4]
a.combination(1).to_a  #=> [[1],[2],[3],[4]]
a.combination(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
a.combination(3).to_a  #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
a.combination(4).to_a  #=> [[1,2,3,4]]
a.combination(0).to_a  #=> [[]] #one combination of length 0
a.combination(5).to_a  #=> []   # no combinations of length 5


# compact → new_ary
# Returns a copy of self with all nil elements removed.
[ "a", nil, "b", nil, "c", nil ].compact
  #=> [ "a", "b", "c" ]

# compact! → ary or nil
# Removes nil elements from the array.
# Returns nil if no changes were made, otherwise returns the array.

[ "a", nil, "b", nil, "c" ].compact! #=> [ "a", "b", "c" ]
[ "a", "b", "c" ].compact!           #=> nil

# concat(other_ary1, other_ary2, ...) → ary
# Appends the elements of other_arys to self.

[ "a", "b" ].concat( ["c", "d"])   #=> [ "a", "b", "c", "d" ]
[ "a" ].concat( ["b"], ["c", "d"]) #=> [ "a", "b", "c", "d" ]
[ "a" ].concat #=> [ "a" ]

a = [ 1, 2, 3 ]
a.concat( [ 4, 5 ])
a #=> [ 1, 2, 3, 4, 5 ]

a = [ 1, 2 ]
a.concat(a, a)  #=> [1, 2, 1, 2, 1, 2]


# count → int
# count(obj) → int
# count {|item| block} → int
# Returns the number of elements.

# If an argument is given, counts the number of elements which equal obj using ==.

# If a block is given, counts the number of elements for which the block returns a true value.

ary = [1, 2, 4, 2]
ary.count                  #=> 4
ary.count(2)               #=> 2
ary.count {|x| x%2 == 0}   #=> 3

# cycle(n=nil) {|obj| block} → nil
# cycle(n=nil) → Enumerator
# Calls the given block for each element n times or forever if nil is given.

# Does nothing if a non-positive number is given or the array is empty.

# Returns nil if the loop has finished without getting interrupted.

# If no block is given, an Enumerator is returned instead.

a = ["a", "b", "c"]
a.cycle {|x| puts x}       # print, a, b, c, a, b, c,.. forever.
a.cycle(2) {|x| puts x}    # print, a, b, c, a, b, c.


# DIFFERENCE
[ 1, 1, 2, 2, 3, 3, 4, 5 ].difference([ 1, 2, 4 ])#=> [ 3, 3, 5 ]
[ 1, 'c', :s, 'yep' ].difference([ 1 ], [ 'a', 'c' ])#[:s, "yep"]


arr2 = Array.new(4,1)
puts "#{arr2}"
arr3 = Array.new(4,"pps")
puts "#{arr3}"

arr4 = Array.new(11) {|i| i= i*2}
puts "#{arr4}"

arr5 = Array.[](1,2,3,4,5)
puts "#{arr5}"

arr6 = Array[1,2,3]
puts "#{arr6}"

arr7 = Array(0..9)
puts "#{arr7}"
arr8 = Array(0...9)
puts "#{arr8}"

# arr4 = Array.new(11) {|i| i= i*2}
ar = [2,1,4,3,9,7,1,13]
ar.reject! {|i| i.even?}
puts "reject #{ar}"
# ar.reject! {|i| i.odd?} # chal nhi rha wrong hai
# puts "reject #{ar}"

puts "accessing range #{ar[1]}"
puts "#{ar	}"
puts "accessing range #{ar[1..3]}"

puts "#{ar	}"
puts "slice #{ar.slice(1)}"
puts "slice #{ar.slice(1..3)}"
