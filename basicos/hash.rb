hash = {}
puts hash.inspect # -> {}

hash = Hash.new
puts hash.inspect # -> {}

hash = Hash.new("world") # -> valor fixo padrão
puts hash.inspect # -> {}
puts hash[:teste] # -> world
puts hash[:alo]   # -> world


hash = {"key1" => "value1", "key2" => "value2"}
puts hash.inspect # -> {"key1"=>"value1", "key2"=>"value2"}
puts hash["key2"] # -> "value2"

hash["key3"] = "value3"
puts hash.inspect # -> {"key1"=>"value1", "key2"=>"value2", "key3"=>"value3"}


hash = {}
hash["nome"] = "João"
puts hash.inspect # -> {"nome"=>"João"}


hash = {"key1" => "value1", "key2" => "value2"}
hash["key3"] = "valuee"
puts hash.keys.inspect   # -> ["key1", "key2", "key3"]
puts hash.values.inspect # -> ["value1", "value2", "value3"]


hash.each do |key, value|
    puts "#{key}: #{value}" # -> chave: valor
end


hash2 = {"key4" => "value4"}
merged_hash = hash.merge(hash2)
puts merged_hash.inspect
# -> {"key1"=>"value1", "key2"=>"value2", "key3"=>"valuee", "key4"=>"value4"}


# -> fetch: busca o value da hash com a key especificada
#    no primeiro parâmetro, caso não encontre retorna o valor
#    padrão do segundo parâmetro.
puts hash.fetch("key2", "valor padrão")

puts hash.has_key?("key3") # -> true
puts hash.has_key?("key10") # -> false
puts hash.has_value?("value2") # -> true
puts hash.has_value?("value10") # -> false


puts hash.inspect # -> {"key1"=>"value1", "key2"=>"value2", "key3"=>"valuee"}
hash.delete("key3")
puts hash.inspect # -> {"key1"=>"value1", "key2"=>"value2"}


# invert: inverte as keys com as values do hash
puts hash.invert.inspect # -: {"value1"=>"key1", "value2"=>"key2"


# to_a: converte a hash em array multidimensional
arr = hash.to_a
puts arr.inspect # -> [["key1", "value1"], ["key2", "value2"]]


hash = {:key1 => "value1", :key2 => "value2"}
hash[:key3] = "value3"
puts hash.inspect # -> {:key1=>"value1", :key2=>"value2", :key3=>"value3"}
puts hash[:key2] # -> value2
