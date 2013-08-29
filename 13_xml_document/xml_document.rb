class XmlDocument
  def initialize(intent = false)
    @intent = intent
    @numb_str = 0
  end
  
  def send(name, arg = {}, &block)
    tag = "<#{name}"
    tag << " #{arg.keys[0].to_s}=\'#{arg.values[0]}\'" unless arg.size == 0 
    if block 
       tag << ">" << space(true) << "#{yield}</#{name}>" << space(false)
    else
       tag << "/>" << space(false)
   end
  end
  
  %w(hello goodbye come_back ok_fine).each do |method|
    define_method(method) { |arg = {}, &block|  send(method, arg, &block) }
  end
  
  def space(increase)
     if @intent
       increase ? @numb_str += 2 : (@numb_str -= 2 if @numb_str > 0)    
       "\n" + (" " * @numb_str) 
     else
       ""
     end
  end  
end