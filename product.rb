class Product
  def is_food?(product)
    product.include? 'chocolate'
  end

  def is_medicine?(product)
    product.include? 'pills'
  end

  def is_book?(product)
    product.include? 'book'
  end

  def is_imported?(product)
    product.include? 'imported'
  end
end
