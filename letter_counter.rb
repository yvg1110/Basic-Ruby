def letter_counter(input)
  return puts "Please provide an input" if input.nil? || input.strip.empty?

  counts = Hash.new(0)
  input.each_char do |char|
    counts[char] += 1 if char.match?(/[A-Za-z]/)
  end

  puts counts
end

input = ARGV[0]
letter_counter(input)
