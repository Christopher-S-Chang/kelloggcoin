# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".
# It should print out:
# Ben's KelloggCoin balance is 14000
# index = index + 1
# puts "outer loop #{index}"
# puts "Ben's KelloggCoin balance is #{ben}"
# end
# for blockchain in blockchain
# puts blockchain["to_user"]
# end
# Brian's KelloggCoin balance is 13000
# brian = 0
# index = 0
# loop do
#   if index == blockchain.length
#     break
#   end
#   if blockchain[index]["to_user"] == "brian"
#     brian = brian + blockchain[index]["amount"]
#     puts "Brian's KelloggCoin balance is #{brian}"
#   end
#   if blockchain[index]["from_user"] =='brian'
#     brian = brian - blockchain[index]["amount"]
#   end
#   index = index + 1
#   puts "outer loop #{index}"
#   puts "Brian's KelloggCoin balance is #{brian}"
  # end

# Evan's KelloggCoin balance is 10350

# Anthony's KelloggCoin balance is 2650


# 👇👇👇 Your code HERE 👇👇👇

users = ["ben","brian","evan","anthony"]
for user in users
  amount = 0
  for block in blockchain
    if block["to_user"] == user
      amount = amount + block["amount"]
    end
    if block["from_user"] == user
      amount = amount - block["amount"]
    end
  end
   puts "#{user.capitalize}'s KelloggCoin balance is #{amount}"
end