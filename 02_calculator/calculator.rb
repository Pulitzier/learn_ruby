#write your code here
def add(a,b)
	a+b
end

def subtract(d,f)
	d-f
end

def sum(ar)
	s = 0;
	ar.each { |i| s+=i };
	return s;
end

def multiply(arr)
	mul = 1;
	arr.each { |i| mul*=i };
	return mul;
end

def power(g,h)
	g ** h
end

def factorial(n)
	if n <= 1
		1
	else 
		n*factorial(n-1)
	end
end	