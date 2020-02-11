# じゃんけんをして、勝ち負けを判定させましょう。（相手の出す手は乱数で決めましょう）
#  以下は出力例です。
#  -----------------
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 0
# あなたの手:グー、相手の手:チョキ
# あなたの勝ちです
#  -----------------
#  以下は例外を入力した時の出力例です。
#  -----------------
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 3
# 入力された値が無効です
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# ...
#  -----------------
def janken
	puts "最初はグー、じゃんけん..."
	puts "[0]:グー"
	puts "[1]:チョキ"
	puts "[2]:パー"
	myhand = gets.to_i
	jankens = ["グー", "チョキ", "パー"]
	enemyhand = rand(0..2)
	while myhand >= 3
		puts "無効です"
		myhand = gets.to_i
	end
	# puts "あなたの手:#{jankens[myhand]}、相手の手:#{jankens[enemyhand]}"
	puts "あなたの手:#{jankens[myhand]}、相手の手:" + jankens[enemyhand].to_s
	if myhand == enemyhand
		puts "あいこです"
	elsif (myhand == 0 && enemyhand == 1) || (myhand == 1 && enemyhand == 2) || (myhand == 2 && enemyhand == 0)
		puts "あなたの勝ちです。"
	else
		puts "あなたの負けです。"
	end
end
janken
