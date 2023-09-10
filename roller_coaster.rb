

def judge_height(list)
  ride_count = 0

  list.each do |fri|
  #friendsの中には、飽くまで個別のハッシュ( {name[1]=>height[1]}とか )が入っている。
  #その個別のハッシュを改めてブロック変数であるfriに'1つずつ'格納している。
  #同じ変数のfriendでも良い。が、ハッシュとしてのfriendとブロック変数としてのfriendと意味合いは別。==スコープ
    if fri[:height] >=130
      puts "#{fri[:name]}くんは乗車できます。"
      ride_count += 1
    else
      puts "#{fri[:name]}くんは乗車できません。"
    end
  end

  puts "乗車するのは#{ride_count}人です"
end

def add_friend(list)
#listはメソッドの中だけなので、どのメソッドも一緒でいける。
  friend={}
  puts "お友達の名前は？"
  friend[:name] = gets.chomp
  puts "お友達の身長は？"
  friend[:height] = gets.to_i
  list << friend #ここで追加
end

friends = []

1.times do
  friends=add_friend(friends)#ここは上書き
end

judge_height(friends)



