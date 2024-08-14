puts "Digite um número:"
numero = gets.to_i

if numero == 1
    puts "Parabéns você acertou o númmero desejado {1}"
end

puts "Você esclolheu o número {2}" if numero == 2

puts "Digite outro número:"
numero2 = gets.to_i

if numero2 == 3
    puts "Digitou o número {3}"
elsif numero2 == 4
    puts "Digitou o nḿmero {4}"
else
    puts "Não é um número desejado."
end

puts "Digite ainda outro número:"
numero3 = gets.to_i

unless numero3 == 5
    puts "O que digitou não é o número {5}"
else
    puts "Aee agora digitou o número {5}"
end
