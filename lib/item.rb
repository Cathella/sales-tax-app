require_relative './tax'
require_relative './product'
require_relative './receipt'

class Item
  def initialize
    @product = Product.new
    @tax = Tax.new
    @receipt = Receipt.new
  end

  def get_items
    tax_sum = 0.0
    total_price = 0.0

    File.open("input_3.dat") do |f|
      while item = f.gets
        quantity, product, price = item.chomp.split(', ')

        if @product.is_imported?(product) && @product.not_taxed?(product)
          tax = @tax.tax_on_imported_no_taxed_products(price)
        elsif @product.is_imported?(product)
          tax = @tax.tax_on_imported_products(price)
        elsif @product.not_taxed?(product)
          tax = 0.0
        else
          tax = @tax.tax_on_products(price)
        end

        price_after_tax = @tax.get_price_after_tax(tax, price)
        puts "#{quantity}, #{product}, #{price_after_tax}"
        
        tax_sum += tax
        total_price += price_after_tax
      end

      @receipt.print_tax(tax_sum)
      @receipt.print_total_price(total_price)
    end
  end
end
