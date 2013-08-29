class RPNCalculator
  attr_reader :value
    
  def initialize
    @value = 0
    @number = []
  end
  
  def push(x)
    @number.push(x)    
  end
  
  def plus
    operator(:+)
  end
 
  def minus
    operator(:-)
  end 
  
  def divide
    operator(:/)
  end
  
  def times
    operator(:*)
  end
  
  def tokens(str)
    str.split.map{ |x| x =~ /\A\d*\z/ ? x.to_i : x.to_sym }   
  end
  
  def evaluate(str)
		rpn_eval = RPNCalculator.new
    tokens(str).each do |x|
			(x.is_a? Integer) ? rpn_eval.push(x) : rpn_eval.operator(x)
		end
		rpn_eval.value
  end
  
  def operator(type)
    raise Exception, "calculator is empty" if @number.size < 2
    @value = [@number.pop ,@number.pop].map(&:to_f).reduce(type)
    @number.push(value)
  end
end
