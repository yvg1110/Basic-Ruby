class String
  def palindrome?
    self == self.reverse
  end
end

if ARGV.empty? || ARGV[0].strip.empty?
  puts "Please provide an input"
else
  input = ARGV[0]
  if input.palindrome?
    puts "Input string is a palindrome"
  else
    puts "Input string is not a palindrome"
  end
end
