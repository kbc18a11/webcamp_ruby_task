def janken(player, cpu)
	hands = ["グー","チョキ","パー"]
	puts "あなたの手:#{hands[player]}、相手の手:#{hands[cpu]}"
	if (player == 0 && cpu == 1) || (player == 1 && cpu == 2) || (player == 2 && cpu == 0)
		# if (player - cpu == -1) || (player - cpu == 2)
		puts "あなたの勝ちです"
	elsif player == cpu
		puts "あいこです"
	else
		puts "あなたの負けです"
	end
end

n = 0
while n == 0 do
	puts "最初はグー、じゃんけん..."
	puts "[0]:グー"
	puts "[1]:チョキ"
	puts "[2]:パー"
	input = gets
	if input =~ /^[0-2]{1}$/
		player = input.to_i
		cpu = rand(0..2)
		puts janken(player, cpu)
		break
	else
		puts "入力された値が無効です"
	end
end