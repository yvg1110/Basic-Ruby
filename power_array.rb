class Array
  def power(x)
    self.map { |e| e ** x }
  end
end

if ARGV.empty? || ARGV.length < 2 || ARGV[0].strip.empty? || ARGV[1].strip.empty?
  puts "Please provide an input"
else
  begin
    input_array = eval(ARGV[0])
    power_value = ARGV[1].to_i
    if input_array.is_a?(Array)
      puts input_array.power(power_value).to_s
    else
      puts "Please provide a valid array input"
    end
  rescue
    puts "Invalid input format"
  end
end
