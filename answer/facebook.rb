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

# arr = [*1..100]
# arr.each do |num|
# for num in 1..100 do
# num = 1
# # while num < 101
# 100.times do
# 	if num % 15 == 0
# 		puts 'facebook'
# 	elsif num % 3 == 0
# 		puts 'face'
# 	elsif num % 5 == 0
# 		puts 'book'
# 	else
# 		puts num.to_s
# 	end
# 	num += 1
# end