#メソッド内の最後の値が戻り値。
def sample
  "1"
  "2"
  "3"         # 最後の行が戻り値になる returnを使えば途中で戻り値にできる。強制終了。
end

def mixer(fruit)
  puts "#{fruit}を細かく砕く"
  "#{fruit}ジュース"
end

puts "フルーツを入力してください"
input = gets.chomp

puts(mixer(input))
