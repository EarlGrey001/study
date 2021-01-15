ruby
ruby on rails 
HTML/CSS
javascript

input = gets
puts input



#input_lines = 2という１行目のデータが入る
input_lines = gets.to_i

#実際は 2.timesになっている
input_lines.times {
#sに２と５を配列で格納する(splitで,を消して分ける)
  s = gets.chomp.split(",")
  #s[0]には2,s[1]には5が入っているわけである
  print "hello = ",s[0]," , world = ",s[1],"\n"
}


getsメソッド： 入力を一行ごとに「文字列」で受け取る。
chompメソッド： 文字列の改行を取り除く。
to_iメソッド： 「文字列」を「数」に変換する。
splitメソッド： 文字列を分割し、配列に格納する。

printメソッド
putsメソッド

input_1 = gets
input_2 = gets
input_3 = gets

list = [input_1,input_2,input_3]
puts list


#標準入力
input_line = gets.to_i
input_line.times do
  s = gets.chomp.split(" ")
  print "hello = #{ s[0] } , world = #{ s[1] }\n"
end