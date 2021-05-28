


#文字列の末尾の改行文字を取り除き

input = gets.chomp

#文字列→数

input = gets.to_i


#足し算

input = gets.chomp
inputs = input.split(" ")
a = inputs[0].to_i
b = inputs[1].to_i
puts a + b

#引き算

input = gets.chomp
inputs = input.split(" ")
a = inputs[0].to_i
b = inputs[1].to_i
puts a - b

#掛け算

input = gets.chomp.to_i
input2 = gets.chomp.to_i
puts input * input2

#割り算

input = gets.chomp.to_i
input2 = gets.chomp.to_i
puts input / input2

#剰余
input_x = gets.to_i
input_y = gets.to_i
puts input_x % input_y

#最小値

n_1 = gets.to_i
n_2 = gets.to_i
n_3 = gets.to_i
n_4 = gets.to_i
n_5 = gets.to_i

number = [n_1, n_2, n_3, n_4, n_5 ]
puts number.min


#絶対値
input = gets.to_i
puts input.abs

#if文

input_a = gets.chomp
input_b = gets.chomp
if input_a == input_b
    puts "OK"
else
    puts "NG"
end

#西暦
y, m, d = gets.split.map(&:to_i)

date_number = y * 10_000 + m * 100 + d

era = case date_number
  when 1873_01_01..1912_07_29
    '明治'
  when 1912_07_30..1926_12_24
    '大正'
  when 1926_12_25..1989_01_07
    '昭和'
  when 1989_01_08..2019_04_30
    '平成'
  when 2019_05_01..3000_12_31
    '令和'
  end

puts "#{era}年#{m}月#{d}日"

#元年表記

y, m, d = gets.split.map(&:to_i)

date_number = y * 10_000 + m * 100 + d

era, yy =
  case date_number
  when 1873_01_01..1912_07_29
    ['明治', y - 1868 + 1]
  when 1912_07_30..1926_12_24
    ['大正', y - 1912 + 1]
  when 1926_12_25..1989_01_07
    ['昭和', y - 1926 + 1]
  when 1989_01_08..2019_04_30
    ['平成', y - 1989 + 1]
  when 2019_05_01..3000_12_31
    ['令和', y - 2019 + 1]
  end

era += yy == 1 ? '元' : yy.to_s

puts "#{era}年#{m}月#{d}日"

#月の日数
def is_leap?(y)
  (y % 400).zero? || (y % 100).nonzero? && (y % 4).zero?
end

y, m = gets.split.map(&:to_i)

puts case m
     when 2
       is_leap?(y) ? 29 : 28
     when 4, 6, 9, 11
       30
     else
       31
      end

#曜日

DAYS_OF_WEEK = %w[日曜日 月曜日 火曜日 水曜日 木曜日 金曜日 土曜日]

def is_leap?(y)
  (y % 400).zero? || (y % 100).nonzero? && (y % 4).zero?
end

adjust_by_month = [0, 1, -1, 0, 0, 1, 1, 2, 3, 3, 4, 4]

y, m, d = gets.split.map(&:to_i)

leap_years = (y / 4 - y / 100 + y / 400)

days = 365 * y + leap_years
days += (m - 1) * 30 + d - 1 + adjust_by_month[m - 1]
days -= 1 if is_leap?(y) && m < 3

puts DAYS_OF_WEEK[days % 7]

#次の日を出力
END_OF_MONTH = [
  [1, 31],
  [2, 29],
  [3, 31],
  [4, 30],
  [5, 31],
  [6, 30],
  [7, 31],
  [8, 31],
  [9, 30],
  [10, 31],
  [11, 30]
]

def is_leap?(y)
  (y % 400).zero? || (y % 100).nonzero? && (y % 4).zero?
end

def next_day(y, m, d)
  case [m, d]
  when [12, 31]
    [y + 1, 1, 1]
  when [2, 28]
    is_leap?(y) ? [y, 2, 29] : [y, 3, 1]
  when *END_OF_MONTH
    [y, m + 1, 1]
  else
    [y, m, d + 1]
  end
end

y, m, d = gets.split.map(&:to_i)

puts '%d %d %d' % next_day(y, m, d)

#

input = gets  # 標準入力の取得
input_n = input.to_i  # 標準入力は文字列であるため数値へ変換

# 以下、質問文のコードの１００を標準入力の数値で置き換え
(1..input_n).each do |n|
    if n%15==0
        puts "Fizz Buzz"
    elsif n%3==0
        puts "Fizz"
    elsif n%5 ==0
        puts "Buzz"
    else
        puts n
    end
end

#奇数・偶数

input = gets.to_i
if input % 2 == 0
    puts "even"
else
    puts "odd"
end

#

input = gets.chomp
inputs = input.split(" ")
input_d = inputs[0].to_i
input_s = inputs[1].to_i


if 10000 <= input_d*100000/input_s 
    puts "yes"
else
    puts "no"
end

input_m = gets.to_i
puts input_m + 1

input_line = gets
puts input_line

number = gets.to_i

if number % 400 == 0
    puts "Yes"
elsif number % 100 == 0
    puts "No"
elsif number % 4 == 0
    puts "Yes"
else
    puts "No"
end

#繰り返し
i = 1
while i<1001
 puts i
 i += 1
end

n = gets.to_i
puts (n-2) * 180 / n

input = gets.chomp
inputs = input.split(" ")
a = inputs[0].to_i
b = inputs[1].to_i

if a - b < 0
    puts b - a
else
    puts a - b
end

input = gets

puts input.sub(/, maybe./, '!!')


input = gets
puts input.chars

#内角の和からn角形を導く

n= gets.to_i
puts n / 180 + 2

#名前 生年月日+1
input_line = gets.to_i
input_line.times do
    array = []
    s = gets.chomp.split(" ")
    n = s[0]
    t = s[1].to_i + 1
    array.push(n,t)
    puts array.join(' ')
end

#空白
input_s =  gets.to_f
array = [input_s-18,input_s-18.5] 

input_n0 = array[0]
input_n1 = array[1]

puts [input_n0,input_n1].join(" ")


input_n = gets.to_i
print input_n * 100 / 140 , "%"

input_n = gets.to_i
puts input_n * (input_n - 1) / 2


input = gets.to_i
puts 100 + input * 10 

input = gets.to_i
puts input * 12


input = gets
print "Best in" + " " + input


input_x = gets.to_i
input_y = gets.to_i
puts 180 - (input_x + input_y)

input = gets.chomp
input_x = input.length 

print"+"
input_x.times{
  print("+")
}
print"+\n"

print "+" + input + "+\n"

print"+"
input_x.times{
  print("+")
}
print"+"

10.times do |i|
print "#{i+1}"," "
end

#カンマ区切りで 2つ出力


#強制3桁
#前に空白を入れる
input = gets.to_i


str = sprintf("%" "3d",input)
str_x = str.to_s
print str_x+ "\n"


#3つの数字から住所を作る
input = gets.chomp
input2 = gets.chomp
input3 = gets.chomp

puts input + "-" + input2 + "-" + input3

#n行の出力

n = gets.to_i
n.times do
input = gets
puts input
end

#1000円以上で3円プラス
input = gets.chomp.to_i

if 1000 <= input
    puts input + 3
else
    puts input
end

#n行の数
n = gets.to_i
n.times do
input = gets.to_i

str = sprintf("%" "3d",input)
str_x = str.to_s
print str_x+ "\n"
end

puts [*1..３].join(" ")

S1 = gets.chomp
S2 = gets.chomp
S3 = gets.chomp
 
array = [S1,S2,S3]

print array.join("|")

input_line = gets.to_i


#文字列
input_line.times do
    x = gets.chomp.to_s
    puts x.length
end

input = gets.chomp
str = gets.chomp 

if str.include?(input)
    puts"YES"
else
    puts"NO"
end

input = gets.chomp
num = input.split("")
print num[0].to_i + num[3].to_i , num[1].to_i + num[2].to_i

input_line = gets.chomp
str = input_line.length

if str == 1
    puts "00" + input_line
elsif str == 2
    puts "0" + input_line
else
    puts input_line
end

input_line = gets.chomp
input = input_line.split(":")
x = input[0]
y = input[1]

x_1 = x[0]
y_1 = y[0]

if x_1.include?("0") && y_1.include?("0")
  puts x.slice(1) , y.slice(1)
elsif x_1.include?("0")
  puts x.slice(1) , y
elsif y_1.include?("0")
  puts x , y.slice(1)
else
  puts input
end

#時刻に+30分
input = gets.chomp
a = input[0]
b = input[1]
c = input[3]
d = input[4]

x = a + b
y = c + d

x_num = x.to_i
y_num = y.to_i

z_m = y_num - 30
z_ms = z_m.to_s

z_p = y_num + 30
z_ps = z_p.to_s

x_str = x.to_s
x_1 = x_num + 1
x_1str = x_1.to_s

#if x_num == 23 && 40 <= y_num
#  puts "00:" + z_ms
#elsif x_num == 23 && 30 <= y_num
#  puts "00:0" + z_ms
if x_num <= 8 && 40 <= y_num
  print "0"+x_1str,":", z_ms
elsif x_num <= 8 && 30 <= y_num
  print "0"+x_1str,":0", z_ms
elsif 40 <= y_num
  print x_1str,":", z_ms
elsif 30 <= y_num
  print x_1str,":0", z_ms
else
  print x_str,":", z_ps
end

# 入力
n = gets.to_i
input = gets.chomp
inputs = input.split(" ")
# 配列作成
array = []
i = 0
# 配列追加
n.times do
    x = inputs[i].to_i
    array.push(x)
    i += 1
end
# 要素数確認
z = array.select { |n| n % 3 == 0 }

# 要素数出力
puts z.size

#12進数1桁
input_line = gets.chomp

if input_line == "A"
    puts 10
elsif input_line == "B"
    puts 11
else 
    puts input_line
end

#2等分(奇数の場合は一つ減らす)
input = gets.chomp.to_i

if input % 2 == 1
    puts (input - 1) / 2
else
    puts input / 2
end

#
input_line = gets.chomp
if input_line.length <= 20
    puts "OK"
else
    puts "NG"
end

#エレベーター
n = gets.to_i
i = 1
s = 0
n.times {
    a = gets.to_i
    s += (a - i).abs
    i = a
}
puts s

#
