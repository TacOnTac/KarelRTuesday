arr = [5, 6, 2, 66, 5, 22, 6, 7, 8, 25, 72, 77777, 1] #Add imput here. seperate each value by a comma

def tri_bulles(matrice) #Using a method to sort the array, we can determine the largest number.

	len =  matrice.length

	i = 0
	j = 1
	tmp = 0

	while i < len
		j = 1
		while j < (len - i)
			if matrice[j-1] > matrice[j]
				tmp = matrice[j]
				matrice[j] = matrice[j-1]
				matrice[j-1] = tmp
			end
			j = j + 1
		end

		i = i+1
	end


	return matrice.last #This line will only show the last number of the array, which when sorted, ends up being the highest number.
end

puts "The biggest number is #{tri_bulles(arr)}" #This line outputs the answer
