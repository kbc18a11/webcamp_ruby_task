# frozen_string_literal: true

# 「FaceBook」
# 以下の条件に従って、1から100までの数字を出力しましょう。
# - 条件
#  - 値が3で割り切れるときは'face'と出力する。
#  - 値が5で割り切れるときは'book'と出力する。
#  - 値が15で割り切れるときは'facebook'と出力する。
#  - それ以外の場合、値をそのまま出力する。

# 出力の判定
# @param num 割られる数
def divisioning(num)
  # 3で割り切れるか?
  puts 'face' if num % 3 == 0

  # 5で割り切れるか?
  puts 'book' if num % 5 == 0

  # 15で割り切れるか?
  if num % 15 == 0
    puts 'facebook'

  # 3，5，15どれも割り切れなかったか?
  else
    puts num
  end
end

loop do
  puts '1から100数字を入力'
  # 割られる数を入力
  num = gets.to_i

  if num > 100
    puts '1から100数字を入力してください'
    next
  end

  divisioning(num)
end
