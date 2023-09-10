#ハッシュロケット。かっこいい。キー１=>バリュー1
#シンボル。:文字列  文字列の見た目で数値として扱われる。ハッシュの時に使うと処理が速くなる。
student = { "name" => "John", "age" => 10 }
teacher = { name: "Mike", age: 25 }

teacher[:subject] = "English"
teacher[:name] = "Emma"
#ハッシュの時は、追加も変更も"="

puts student
puts teacher
puts teacher[:name]
puts student["name"]