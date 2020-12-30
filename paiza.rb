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