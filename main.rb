# Get Item Name
print "Item Name: "
item_name = gets

# Get Item Price
print "Item Price: "
item_price = gets.to_f

puts "-----------------------------------"
puts "Item: #{item_name}"
puts "Price: " + item_price.to_s

# Get Tax on the Item
sales_tax = (0.1 * item_price).round(2)
puts "Tax: " + sales_tax.to_s

# Get Total Item Price
total_item_price = item_price + sales_tax
print "Price after tax: "
puts total_item_price
puts "-----------------------------------"
