class Friend
	def greeting(name = nil)
		if name != nil
			z = ', '
		end
		'Hello' + z.to_s + name.to_s + '!'
	end
end
