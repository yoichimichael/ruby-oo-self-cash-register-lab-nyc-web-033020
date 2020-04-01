require 'pry'

class CashRegister
	
	def initialize(discount = 0)
		@total = total
		@discount = discount
	end
	
	def total
		@total = 0
	end
	
	def total= (total)
		@total = total
	end
	binding.pry
	def discount
		@discount
	end

end

cash_register = CashRegister.new
cash_register.total = 100
cash_register.total