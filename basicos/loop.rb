puts "--> loop..do:"
count = 0
loop do
    count += 1
    puts count
    break if count == 5
end
puts


puts "--> while..do:"
count = 0
while count < 5 do
    puts count
    count += 1
end
puts


puts "--> until..do:"
count = 0
until count == 5 do
    puts count
    count += 1
end
puts


puts "--> for..in..do:"
for i in (0..4) do
    puts i
end
puts


puts "--> times do..end:"
5.times do |x|
    puts x
end
puts


puts "--> times: {}"
5.times { |x| puts x }
puts


puts "--> each com array:"
[0, 1, 2, 3, 4].each do |num|
    puts num
end
puts


puts "--> each com hash:"
{:nome1=> 'teste1', :nome2=> 'teste2', :nome3=> 'teste3'}.each do |key, value|
    puts key
    puts value
end
puts


puts "--> each array contendo hashs:"
[{:nome=> 'teste1'}, {:nome=> 'teste2'}].each do |item|
    item.each do |key, value|
        puts key
        puts value
    end
end
puts


puts "--> each Range:"
(0..4).each do |i|
    puts i
end
puts


puts "--> upto:"
0.upto(4) do |i|
    puts i
end
puts


puts "--> downto:"
4.downto(0) do |i|
    puts i
end
puts


# next: pula para a próxima iteração do loop.
puts "--> next:"
5.times do |i|
    next if i.even?
    puts i
end
puts


# redo: repete a iteração atual do loop.
# cuidado: dependendo da condição que o redo estiver
#          pode deixar o loop infinito.
# puts "--> redo:"
# 5.times do |i|
#     redo if i == 2
#     puts i
# end
# puts


# break: interrompe o loop.
puts "--> break:"
5.times do |i|
    break if i == 3
    puts i
end
puts
