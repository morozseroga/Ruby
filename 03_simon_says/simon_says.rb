def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, n = 2)
	((str+' ') * n).strip
end

def start_of_word(str, lenght)
	str[0...lenght]
end

def first_word(str)
	str.split[0]
end

def titleize(str)
	str = str.split( )
	if str.size ==  1 
		str[0].capitalize!
	elsif str.size == 2 || str.size == 3 
		str[0].capitalize!
		str[-1].capitalize!
	elsif str.size == 6
		str[0].capitalize!
		str[1].capitalize!
		str[-2].capitalize!
		str[-1].capitalize!
		
	end
	str.join(" ")
end