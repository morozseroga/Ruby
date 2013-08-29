class Array
	def sum
		if self == []
			return 0
		end
		x = 0
		self.each{ |e| x += e}
		x
	end
	
	def square
	  self.map{ |e| e*e }
	end
	
	def square!
	  self.map!{ |e| e*e }
  end
	
end