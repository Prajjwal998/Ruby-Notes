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

arr = Array.new
arr1 = Array.new(20)

puts "size of arr: #{arr.size}" #0
puts "size of arr: #{arr.length}" #0
puts "size of arr1: #{arr1.size}" #20
puts "size of arr1: #{arr1.length}" #20

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
