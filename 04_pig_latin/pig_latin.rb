#write your code here
def helper(str)
	case str.slice(0)
	when /[aeiou]/
		str + "ay"
	when /[^aeiou]/
		if /[^aeiou]/ === str[1]
			if /[^aeiou]/ === str[2]
				str.slice(3, str.length) + str[0] + str[1] + str[2] + "ay"
			elsif str.index("qu")
			str.slice(str.index("qu")+2, str.length) + str.slice(0, str.index("qu")+2) + "ay"
			else
			str.slice(2, str.length) + str[0] + str[1] + "ay"
			end
		elsif str.index("qu")
		str.slice(2, str.length) + str.slice(0, 2) + "ay"	
		else
		str.slice(1, str.length) + str[0] + "ay"
		end
	else
		puts "Doesn`t match to any regexp"
	end
end

def translate(w)
	if w.index(" ")
		arr = w.split(" ")
		i = 0
		begin
			arr[i] = helper(arr[i]) 
			i += 1
		end until i >= arr.length
		w = arr.join(" ")
	else
		helper(w)
	end 
end