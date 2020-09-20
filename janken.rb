# frozen_string_literal: true

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
# -----------------
# 以下は例外を入力した時の出力例です。
# -----------------
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 3
# 入力された値が無効です
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# ...

# 勝利時のメッセージ
def win_message
  puts 'あなたの勝ちです'
end

# 引き分け時のメッセージ
def draw_messsage
  puts '引き分けです'
end

# 敗北時のメッセージ
def lost_message
  puts 'あなたの負けです'
end

# メニュー表示
def plint_menu
  puts '-----------------'
  puts '最初はグー、じゃんけん...'
  puts '[0]:グー'
  puts '[1]:チョキ'
  puts '[2]:パー'
end

# じゃんけんの判定を行う
# @param player プレイヤーの手
# @param cp 相手の手
def game_judgment(player, cp)
  puts "あなたの手:#{player}、相手の手:#{cp}"

  # プレイヤー手ごとの勝負の判定を分岐させる
  case player
  when 'グー'
    player_case_goo(cp)
  when 'チョキ'
    player_case_choki(cp)
  when 'パー'
    player_case_paa(cp)
  end
end

# プレイヤーがグーだった場合の判定
# @param cp 相手の手
def player_case_goo(cp)
  # 相手の出した手の判定によって表示結果を変更
  case cp
  when 'グー'
    puts draw_messsage
  when 'チョキ'
    puts win_message
  when 'パー'
    puts lost_message
  end
end

# プレイヤーがチョキだった場合の判定
# @param cp 相手の手
def player_case_choki(cp)
  # 相手の出した手の判定によって表示結果を変更
  case cp
  when 'グー'
    puts lost_message
  when 'チョキ'
    puts draw_messsage
  when 'パー'
    puts win_message
  end
end

# プレイヤーがパーだった場合の判定
# @param cp 相手の手
def player_case_paa(cp)
  # 相手の出した手の判定によって表示結果を変更
  case cp
  when 'グー'
    puts win_message
  when 'チョキ'
    puts lost_message
  when 'パー'
    puts draw_messsage
  end
end

# 手の種類
HAND_TYPE = %w[グー チョキ パー].freeze

loop do
  # メニューを表示
  plint_menu
  # プレイヤーの手
  player = HAND_TYPE[gets.to_i]

  # 0~2以外の数値が入力されたか?
  unless player
    puts '入力された値が無効です'
    next
  end

  # 対戦相手の手
  cp = HAND_TYPE[rand(3)]

  # 勝負の判定を行う
  game_judgment(player, cp)
end
