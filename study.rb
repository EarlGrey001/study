
input = gets.chomp
inputs = input.split(" ")
input_d = inputs[0].to_i
input_s = inputs[1].to_i


if 10000 <= input_d*100000/input_s 
    puts "yes"
else
    puts "no"
end