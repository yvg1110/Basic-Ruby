if ARGV.empty?
  puts "Please provide an input"
  exit
end

input = ARGV[0]

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

sorted_hash = length_hash.sort.to_h
puts sorted_hash
