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