# arr=[1,2,3,4,5]

# arr.each do |i|
# puts i
# end

hsh = color ={"black"=>0, "red"=>10}
hsh.each do |key , value|
print key, "=", value, "\n"
end

(5..11).each do |n|
print n, ","
end
puts "\n"
(5...11).each do |n|
print n, ","
end