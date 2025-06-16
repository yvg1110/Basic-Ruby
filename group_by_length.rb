#!/usr/bin/env ruby

if ARGV.empty?
  puts "Please provide an input"
  exit
end

input = eval(ARGV[0])
grouped = input.map(&:to_s).group_by(&:length)
grouped = grouped.transform_values { |v| v.map { |s| input.find { |e| e.to_s == s } } }

result = grouped.inject({ "odd" => [], "even" => [] }) do |acc, (len, values)|
  (len.to_i.odd? ? acc["odd"] : acc["even"]) << values
  acc
end

puts result
