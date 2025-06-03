class String
  def to_s
    self.chars.map { |c|
      if c =~ /[A-Z]/
        c.downcase
      elsif c =~ /[a-z]/
        c.upcase
      else
        c
      end
    }.join
  end
end

if ARGV.empty? || ARGV[0].strip.empty?
  puts "Please provide an input"
else
  input = ARGV[0]
  puts input.to_s
end
