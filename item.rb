class Item
  BASIC_SALES_TAX = 0.1
  IMPORT_TAX = 0.05

  attr_accessor :tax_sum

  def is_food?(product)
    if product.include? 'chocolate'
      true
    end
  end

  def is_medicine?(product)
    if product.include? 'pills'
      true
    end
  end

  def is_book?(product)
    if product.include? 'book'
      true
    end
  end

  def not_taxed?(product)
    if is_book?(product) || is_medicine?(product) || is_food?(product)
      true
    end
  end

  def is_imported?(product)
    if product.include? 'imported'
      true
    end
  end

  def tax_on_imported_no_taxed_products(price)
    tax = (IMPORT_TAX * price.to_f).round(2)
  end

  def tax_on_imported_products(price)
    import_tax = IMPORT_TAX * price.to_f
    normal_tax = BASIC_SALES_TAX * price.to_f
    tax = (import_tax + normal_tax).round(2)
  end

  def tax_on_products(price)
    tax = (BASIC_SALES_TAX * price.to_f).round(2)
  end

  def get_price_after_tax(tax, price)
    price_after_tax = (tax + price.to_f).round(2)
  end

  def get_items
    tax_sum = 0.0
    total_price = 0.0

    File.open("input_3.dat") do |f|
      while item = f.gets
        quantity, product, price = item.chomp.split(', ')

        if is_imported?(product) && not_taxed?(product)
          tax = tax_on_imported_no_taxed_products(price)
        elsif is_imported?(product)
          tax = tax_on_imported_products(price)
        elsif not_taxed?(product)
          tax = 0.0
        else
          tax = tax_on_products(price)
        end

        price_after_tax = get_price_after_tax(tax, price)
        puts "#{quantity}, #{product}, #{price_after_tax}"
        
        tax_sum += tax
        total_price += price_after_tax
      end

      print "Sales Taxes: "
      puts tax_sum
      print "Total: "
      puts total_price
    end
  end
end
