if ARGV.empty?
  puts "Please provide an input"
  exit
end

input = ARGV[0]

# Parse string into array
begin
  elements = eval(input)
rescue
  puts "Invalid input format"
  exit
end

length_hash = {}

elements.each do |el|
  str = el.to_s
  len = str.length
  length_hash[len] ||= []
  length_hash[len] << str
end

# Sort hash by keys and print
sorted_hash = length_hash.sort.to_h
puts sorted_hash
