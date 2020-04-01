require 'pry'

class CashRegister
	
	attr_accessor :total

	def initialize(discount = 0)
		@total = 0
		@discount = discount
	end
	
	#def total
	#	@total
	#end
	#def total= (total)
	#	@total = total
	#end
	
	def discount
		@discount
	end

	def add_item(title, price, quantity=1)
		@total += price * quantity
	end

	def apply_discount
		@total -= (@total * (@discount / 100.0))
		puts "After the discount, the total comes to #{@total}"
	end

end

#cash_register = CashRegister.new
#cash_register.total = 100
#cash_register.total