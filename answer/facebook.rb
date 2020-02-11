i=1
100.times do
	if i % 15 == 0
		puts 'FaceBook'
	elsif i % 5 == 0
		puts 'Book'
	elsif i % 3 == 0
		puts 'Face'
	else
		puts i
	end
	i = i + 1
end