class Tax
  basic_sales_tax = 0.1
  import_sales_tax = 0.05

  def sales_tax(price)
    basic_sales_tax * price
  end

  def tax_on_imported_products(price)
    import_sales_tax * price
  end

  def tax_on_non_taxed_products(price)
    0.0
  end
end
