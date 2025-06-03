class Vehicle
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price.to_f
  end

  def to_s
    "Bike Name: #{@name}\nBike Price: #{@price.to_i}"
  end
end

class Bike < Vehicle
  attr_accessor :dealer, :percent_price_increase

  def initialize(name, price, dealer, percent)
    super(name, price)
    @dealer = dealer
    @percent_price_increase = percent.to_f
  end

  def show
    puts to_s
    puts "Bike Dealer: #{@dealer}"
  end

  def price_increase
    @price += @price * (@percent_price_increase / 100.0)
  end

  def show_after_increase
    puts
    puts "After #{@percent_price_increase} percent hike in price:"
    puts "Bike Name: #{@name}"
    puts "Bike Price: #{@price}"
    puts "Bike Dealer: #{@dealer}"
  end
end

if ARGV.empty?
  puts "Please provide an input"
else
  input = ARGV.join(" ")
  match = input.match(/"?(.+?)"?\s+([\d.]+)\s+"?(.+?)"?\s+([\d.]+)/)

  if match
    name, price, dealer, percent = match.captures
    bike = Bike.new(name, price, dealer, percent)
    bike.show
    bike.price_increase
    bike.show_after_increase
  else
    puts "Invalid input format"
  end
end
