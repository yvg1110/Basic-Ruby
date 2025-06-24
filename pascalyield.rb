def pascal(n)
  return if n.to_i <= 0
  row = [1]
  n.to_i.times do
    yield row
    row = [0] + row + [0]
    row = row.each_cons(2).map { |a, b| a + b }
  end
end

if __FILE__ == $0
  input = gets&.strip
  if input.nil? || input.empty?
    puts "Please provide an input"
  else
    pascal(input.to_i) { |row| puts row.join(" ") }
  end
end
