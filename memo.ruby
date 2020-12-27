ruby
ruby on rails 
HTML/CSS
javascript

#input_lines = 2という１行目のデータが入る
input_lines = gets.to_i

#実際は 2.timesになっている
input_lines.times {
#sに２と５を配列で格納する(splitで,を消して分ける)
  s = gets.chomp.split(",")
  #s[0]には2,s[1]には5が入っているわけである
  print "hello = ",s[0]," , world = ",s[1],"\n"
}