class Temperature
	def initialize (options= [])
		@temp = options 
	end
  
  def in_fahrenheit
	if @temp.has_key? (:f)
		@temp[:f]
	else
		@temp[:c].to_f/(5.0/9.0) + 32
	end
  end

  def in_celsius
    if @temp.has_key? (:c)
		@temp[:c]
	else
		(@temp[:f].to_f - 32)*5.0/9.0
	end
  end
  
  def self.from_celsius(temp)
    class_eval "Temperature.new(:c => #{temp})"
  end
  
  def self.from_fahrenheit(temp)
    class_eval "Temperature.new(:f => #{temp})"
  end 
  
end


class Celsius < Temperature
  def initialize(temp)
    @temp = temp
  end
  
  def in_fahrenheit
    @temp.to_f/(5.0/9.0) + 32
  end
  
  def in_celsius
    @temp
  end
end
  
class Fahrenheit < Temperature
    def initialize(temp)
    @temp = temp
  end
  
  def in_celsius
    (@temp.to_f - 32)*5/9
  end
  
  def in_fahrenheit
    @temp
  end
end