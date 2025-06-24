def count_characters(input)
  if input.nil? || input.strip.empty?
    puts "Please provide an input"
    return
  end

  lowercase = uppercase = digits = special = 0

  input.each_char do |char|
    if ('a'..'z').include?(char)
      lowercase += 1
    elsif ('A'..'Z').include?(char)
      uppercase += 1
    elsif ('0'..'9').include?(char)
      digits += 1
    else
      special += 1
    end
  end

  puts "Lowercase characters = #{lowercase}"
  puts "Uppercase characters = #{uppercase}"
  puts "Numeric characters = #{digits}"
  puts "Special characters = #{special}"
end

if __FILE__ == $0
  input = gets
  count_characters(eval(input))  # Accepts strings like "heLLo Every1"
end
