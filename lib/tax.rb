class Tax
  BASIC_SALES_TAX = 0.1
  IMPORT_TAX = 0.05

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
end
