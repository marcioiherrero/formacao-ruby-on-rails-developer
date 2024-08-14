require 'byebug'

puts "Digite um número de telefone válido:"
telefone = gets.to_s

txt_verde = "\e[32m"
txt_vermelho = "\e[31m"
txt_reset = "\e[0m"

byebug

if telefone =~/^\(\d{2}\)\ 9\d{4}-\d{4}$/
    puts "#{txt_verde}O telefone digitado é válido#{txt_reset}"
else
    puts "#{txt_vermelho}O telefone digitado é inválido#{txt_reset}"
end

texto = "O gato está no telhado. Será que o gato vai cair? Que gato chato."
expressao_regular = /gato/
resultado = texto.scan(expressao_regular)
puts resultado.count
