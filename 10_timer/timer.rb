class Timer
	
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end
	
	def seconds=(val)
		@seconds = val
	end
	
	def time_string
		h = @seconds / 3600
		m = @seconds % 3600 / 60
		s = @seconds % 60
		"%02i:%02i:%02i" % [h, m, s]
	end
	 
	def padded(s)
		s / 10 == 0 ? "0" << s.to_s : s.to_s    
	end
end