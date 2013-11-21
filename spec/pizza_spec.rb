require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do
	describe '.initialize' do
		it 'records all of the toppings' do
			toppings = [
				Pizza::Topping.new('mushrooms', vegetarian: true),
				Pizza::Topping.new('pepperoni')
			]
			pizza = Pizza::Pie.new(toppings)

			expect(pizza.toppings).to eq(toppings)
		end

		it 'defaults to cheese if pizza has no toppings' do
			pizza = Pizza::Pie.new

			expect(pizza.toppings.size).to eq(1)
			expect(pizza.toppings.first.name).to eq('cheese')
		end
	end

	describe 'vegetarian?' do
		it 'returns true if all toppings are vegetarian' do
			pizza = Pizza::Pie.new

			expect(pizza.toppings.vegetarian?).to eql true
		end
	end
end 

describe Pizza::Topping do
	describe '.initialize' do
		it "sets the name of the topping" do
			topping = Pizza::Topping.new("olives")
			
			expect(topping.name).to eql "olives"

		end

		it "sets whether or not topping is vegetarian" do
			topping = Pizza::Topping.new("olives",vegetarian: true)

			expect(topping.vegetarian).to eql(true)
		end

	end

end