class Item
  attr_accessor :quantity, :product, :price

  def get_items
    File.open("input_3.dat") do |f|
      while item = f.gets
        quantity, product, price = item.chomp.split(', ')
        puts "#{quantity}, #{product}, #{price}"
      end
    end
  end
end
