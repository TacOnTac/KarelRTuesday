def recurse(nn)
	unless (nn==0)
		puts nn
		recurse(nn-1)
	end
end

puts recurse(2)
