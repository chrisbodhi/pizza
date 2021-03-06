module Pizza
  class Pie
  	attr_reader :toppings

  	def initialize(toppings=[Pizza::Topping.new('cheese', vegetarian: true)])
  		@toppings = toppings 
  	end

    def vegetarian?(toppings)
      return true unless toppings.any? { |topping| topping }
    end

  end

  class Topping
  	attr_reader :name, :vegetarian

  	def initialize(name, vegetarian: false)
  		@name = name
  		@vegetarian = vegetarian
  	end

  end
end