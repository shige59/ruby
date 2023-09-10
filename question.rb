friends = []


1.times do
  friend={}
  puts "お友達の名前は？"
  friend[:name] = gets.chomp
  puts "お友達の身長は？"
  friend[:height] = gets.to_i
  puts friend
  friends << friend
end

#loop内で定義したfriendは、loopの外では使えない。使える範囲＝スコープ。
#逆はいける。friendsは外で定義して、中で使ってる。"loop内で定義"した変数だけ注意。

#ハッシュに対してブロック変数1つだとこうなる。==それぞれの要素を格納。
friend.each do |first|
  puts "#{first} : "
end
[:name, "a"] : 
[:height, 1] :

#ハッシュに対してブロック変数2つだとこうなる。==keyとvalueをそれぞれ格納。名前をkeyとvalueにすると分かりやすい。
friend.each do |first,second|
  puts "#{first} : #{second} "
end
name : a 
height : 1 

fruits = { 'りんご' => 150, 'オレンジ' => 200, 'バナナ' => 100, 'パイナップル' => 300 }
puts fruits
fruits.each do |first|
  puts "#{first} : "
end
# 実行結果
#=> りんご : 150
#=> オレンジ : 200
#=> バナナ : 100
#=> パイナップル : 300

