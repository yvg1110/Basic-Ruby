def fibonacci_up_to(limit)
  a, b = 1, 1
  yield a
  while b <= limit
    yield b
    a, b = b, a + b
  end
end

if ARGV.empty?
  puts "Please provide an input"
else
  limit = ARGV[0].to_i
  fibonacci_up_to(limit) { |num| print "#{num} " }
  puts
end
