def add(a, b)
	a+b
end

def subtract(a, b)
	a-b
end

def sum(args)
	s = 0
	args.each{ |e| s +=e }
	s
end

def multiply(args)
	m = 1
	args.each{ |e| m *=e }
	m
end

def power(a, b)
	a**b
end

def factorial(f)
	if f == 0  
		m = 0 
	else
		m = 1 
	end
	1.upto(f){ |c| m *=c }
	m
end
