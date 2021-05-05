require_relative './item'

item = Item.new
item.get_items

# basic_sales_tax = 0.1
# import_sales_tax = 0.05
# total_sales_tax = 0.0
# total_price = 0.0

# File.open("input_3.dat") do |f|
#   while item = f.gets
#     quantity, product, price = item.chomp.split(', ')

#     if product.include? "book"
#       tax = 0.0
#     elsif product.include? "chocolate"
#       tax = 0.0
#     elsif product.include? "pills"
#       tax = 0.0
#     elsif product.include? "imported"
#       tax = ((basic_sales_tax + import_sales_tax) * price.to_f).round(2)
#     else
#       tax = (basic_sales_tax * price.to_f).round(2)
#     end

#     price_after_tax = (tax + price.to_f).round(2)

#     puts "#{quantity}, #{product}, #{price_after_tax}"

#     total_sales_tax += tax
#     total_price += price_after_tax
#   end

#   puts "Sales Taxes: " + total_sales_tax.to_s
#   print "Total: "
#   puts total_price.round(2)
# end