require 'pry'

class CashRegister
	
	attr_accessor :total
	attr_reader :discount
	attr_reader :items

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
		@price = []
	end
	
	#def discount
	#	@discount
	#end

	def add_item(title, price, quantity=1)
		quantity.times { @items << title }
		@price << price * quantity 
		@total += price * quantity
	end

	def apply_discount
		if	@discount == 0
			"There is no discount to apply."
		else
			@total -= (@total * (@discount / 100.0))
			"After the discount, the total comes to " + "$#{@total.round}."
		end
	end

	def void_last_transaction
		@total -= @price[-1]
	end

end

#cash_register = CashRegister.new(20)
#cash_register.total = 100
#cash_register.apply_discount