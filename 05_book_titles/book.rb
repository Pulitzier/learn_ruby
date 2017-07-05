class Book
attr_reader :title

def title=(t)
	new_t = t.split(" ")
	new_t = [new_t[0].capitalize] + 
		new_t[1..-1].map do |w|
			each = %w{and in the of a an}
			if each.include? w
				w
			else
				w.capitalize
			end
		end
	@title = new_t.join(" ")
end
end