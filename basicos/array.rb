arr0 = []
arr1 = [1, 2, 3, 4, 5]
arr2 = Array.new          # array vazio
arr3 = Array.new(3)       # [nil, nil, nil]
arr4 = Array.new(3, true) # [true, true, true]
arr5 = Array.new(3, "oi") # ["oi", "oi", "oi"]
arr6 = Array[1, 2, 3]

# .inspect -> converte dados complexos de
#  uma variavel em uma string formatada.
puts arr0.inspect
puts arr1.inspect
puts arr2.inspect
puts arr3.inspect
puts arr4.inspect
puts arr5.inspect
puts arr6.inspect


arr = [1, 2, 3, 4, 5]
puts arr[0]  # -> 1
puts arr[1]  # -> 2
puts arr[-1] # -> 5 - índice negativo acessa a partir do final

arr.first # -> 1
arr.last  #- > 5

arr << 6 # -> adiciona o elemento 6 ao final do array
puts arr.inspect

arr.push(7) # -> adiciona o elemento 7 ao final do array
puts arr.inspect

arr.unshift(0) # -> adiciona o elemento 0 no início do array
puts arr.inspect

arr.pop # -> remove o último elemento do array
puts arr.inspect

arr.shift # -> remove o primeiro elemento do array
puts arr.inspect


arr1 = [1, 2, 3]
arr2 = [4, 5, 6]
arr3 = arr1 + arr2 # -> concatena os arrays
puts arr3.inspect

arr3 = (arr1 * 3) # -> concatena o array 3 vezes
puts arr3.inspect


arr = [1, 2, 3, 4, 5]
arr.each do |item|
    puts item
end


arr = [1, 2, 3, 4, 5]
puts arr.length # -> 5

arr1 = arr.reverse.inspect # -> [5, 4, 3, 2, 1]
puts arr1.inspect

puts arr.include?(3) # -> true

arr1 = arr.map { |x|  x * 2 } # -> [2, 4, 6, 8, 10]
puts arr1.inspect


str = "a,b,c,d"
# -> split: divide uma string em array de strings
#    de acordo com um separador.
arr = str.split(",")
puts arr.inspect

# -> join: é o inverso do split, cria uma string com os elementos do array
#    opcionalmente podendo informar o parâmetro do separador.
arr1 = arr.join("-")
puts arr1.inspect


# array multidimensional
multi = [[1, 2], [3, 4], [5, 6]]
puts multi[0][0] # linha 0 - coluna 0
puts multi[0][1] # linha 0 - coluna 1
puts multi[1][0] # linha 1 - coluna 0
puts multi[1][1] # linha 1 - coluna 1
puts multi[2][0] # linha 2 - coluna 0
puts multi[2][1] # linha 2 - coluna 1


# converte range para array
puts (1..5).to_a.inspect # -> [1, 2, 3, 4, 5]


# select: seleciona os elementos do array dada uma condição
# reject: é o inverso do select, seleciona os elementos
#         rejeitando os elementos do array dada uma condição
arr = [1, 2, 3, 4, 5]
arr1 = arr.select { |x| x > 2 }     # -> [3, 4, 5]
arr2 = arr.reject { |x| x > 2 }     # -> [1, 2]
item_find = arr.find { |x| x == 4 } # -> 4
puts arr1.inspect
puts arr2.inspect
puts item_find


arr = [
    {nome: 'Marcio', idade: 45},
    {nome: 'Maria', idade: 10},
    {nome: 'Fulana', idade: 12},
    {nome: 'Ciclano', idade: 14}
]

# find: só retorna um item quando é encontrado
a = arr.find { |x| x[:nome] == 'Fulana'} # -> {:nome=> 'Fulana'}
puts a.inspect

# select retorna uma coleção do mesmo tipo que foi originado. 
a = arr.select { |x| x[:nome].include? 'Ma'} # -> [{:nome=> 'Marcio'}, {:nome=> 'Maria'}]
puts a.inspect
