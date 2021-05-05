class Product
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
end
