# puts "This is a print statment."

# item1 = {
#   product: "Apple",
#   department: "Produce",
#   price: "3.99/lb",
# }

# item2 = {
#   product: "Steak",
#   department: "Meat",
#   price: "12.99/lb"
# }

# item3 = {
#   product: "Penne pasta",
#   department: "Grocery"
#   price: "2.99"
# }

# item1 = {
#   :product => "Apple",
#   :department => "Produce",
#   :price => "3.99/lb",
# }

# item2 = {
#   :product => "Steak",
#   :department => "Meat",
#   :price => "12.99/lb"
# }

# item3 = {
#   :product => "Penne pasta",
#   :department => "Grocery"
#   :price => "2.99"
# }

# class Item

#   attr_reader :product, :department, :price
#   attr_writer :department, :price

#   def initialize(input_product, input_department, input_price)
#     @product = input_product
#     @department = input_department
#     @price = input_price
#   end
# end

# item1 = Item.new("Penne pasta", "Grocery", 2.99)
# item2 = Item.new

# pp item1.product
# pp item1.department
# pp item1.price

# item1.price = 3.99

# pp item1


class Item

  attr_reader :product, :department, :price
  attr_writer :department, :price

  def initialize(input_options)
    @product = input_options[:product]
    @department = input_options[:department]
    @price = input_options[:price]
  end

  def print_info
    p "#{product} from the #{department} costs #{price}."
  end
end

item1 = Item.new({product: "Apple", department: "Produce", price: "3.99/lb"})

item1.print_info