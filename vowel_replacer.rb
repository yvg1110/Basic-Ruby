if ARGV.empty?
  puts "Please provide an input"
else
  input = ARGV.join(" ")
  puts input.gsub(/[aeiouAEIOU]/, '*')
end
