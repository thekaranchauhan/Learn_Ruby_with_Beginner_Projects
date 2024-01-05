require "./manager"

def submenu(manager, to)
  coin_list = manager.coin_list
  puts "Available coins: "
  puts coin_list.join(", ").center(50, "~")
  puts "Select a coin: "
  symbol = gets.chomp.upcase
  print "Enter amount: "
  amount = gets.chomp.to_i

  if coin_list.include?(symbol)
    result = manager.calculate(symbol, amount, to)
    puts "#{amount} #{symbol} = #{result} #{to} "
  else
    puts "#{symbol} is not available."
  end
end

def menu
  manager = Manager.new
  loop do
    puts "CryptoCurrency Calculator".center(50, "~")
    puts "a) Convert to USD"
    puts "b) Convert to EUR"
    puts "q) Quit"
    puts "Action: "
    choice = gets.chomp

    case choice
    when 'a' then submenu(manager, "USD")
    when 'b' then submenu(manager, "EUR")
    end

    break unless choice != "q"
  end
end

menu()
