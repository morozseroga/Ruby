class Book
	attr_reader :title
	@@worlds = %w(the a  an to and or on not of in over)
	def title=(text)
		@title = text.split.each{ |e| e.capitalize! unless @@worlds.include? e }.join(' ')
		@title[0] = @title[0].upcase
	end
end
