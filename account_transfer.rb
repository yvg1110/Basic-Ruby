class Account
  @@account_counter = 1
  attr_reader :name, :account_no, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance.to_i
    @account_no = @@account_counter
    @@account_counter += 1
  end

  def deposit(amount)
    @balance += amount.to_i
  end

  def withdraw(amount)
    @balance -= amount.to_i
  end

  def print_details
    puts "Account number: #{@account_no}"
    puts "Account holder name: #{@name}"
    puts "Account balance: #{@balance}"
    puts
  end
end

if ARGV.empty?
  puts "Please provide an input"
else
  input = ARGV.join(" ")
  match = input.match(/"?(.+?)"?:([\d]+)\s+"?(.+?)"?:([\d]+)\s+transfer:([\d]+)/)

  if match
    name1, balance1, name2, balance2, amount = match.captures

    acc1 = Account.new(name1, balance1)
    acc2 = Account.new(name2, balance2)

    acc1.withdraw(amount)
    acc2.deposit(amount)

    acc1.print_details
    acc2.print_details
  else
    puts "Invalid input format"
  end
end
