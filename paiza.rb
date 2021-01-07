掛け算

input = gets.chomp.to_i
input2 = gets.chomp.to_i
puts input * input2

足し算

input = gets.chomp
inputs = input.split(" ")
a = inputs[0].to_i
b = inputs[1].to_i
puts a + b

最小値

n_1 = gets.to_i
n_2 = gets.to_i
n_3 = gets.to_i
n_4 = gets.to_i
n_5 = gets.to_i

number = [n_1, n_2, n_3, n_4, n_5 ]
puts number.min


input_a = gets.chomp
input_b = gets.chomp
if input_a == input_b
    puts "OK"
else
    puts "NG"
end



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