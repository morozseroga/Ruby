require 'time'

def measure(num = 1)
  t = 0.0
  num.times do
    t1 = Time.now
    yield
    t2 = Time.now  
    t += t2 - t1
  end
  return t / num
end

