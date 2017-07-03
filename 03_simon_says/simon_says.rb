#write your code here
def echo(t)
	t
end

def shout(m)
	m.upcase
end

def repeat(w, n=2)
	str = "#{w}"
	(n-1).times do
		str = str + " " + w
	end
	str
end

def start_of_word(w, n)
	w.slice(0,n)
end

def first_word(w)
	w.slice(0, w.index(" "))
end

def titleize(li)
	if li.index(" ")
		ar = li.split(" ") 
		i = 0
		while i < ar.length do
			if !(ar[i].eql?"and" or ar[i].eql?"the" or ar[i].eql?"over")
				ar[i] = ar[i].slice(0).upcase + ar[i].slice(1, ar[i].length)
			end
			i += 1
		end
		li = ar.join(" ")
		li[0].upcase + li.slice(1, li.length)
	else 
		li[0].upcase + li.slice(1, li.length)
	end
end