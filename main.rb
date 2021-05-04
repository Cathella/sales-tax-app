basic_sales_tax = 0.1
import_sales_tax = 0.05
total_sales_tax = 0
total_price = 0

File.open("input_1.dat") do |f|
  while item = f.gets
    quantity, product, price = item.chomp.split(', ')
    tax = (basic_sales_tax * price.to_f).round(2)
    price_after_tax = (tax + price.to_f).round(2)
    puts "#{quantity}, #{product}, price: #{price_after_tax}"
    total_sales_tax += tax
    total_price += price_after_tax
  end
  puts "Sales Taxes: " + total_sales_tax.to_s
  print "Total: "
  puts total_price.round(2)
end