# Método match
# Retorna um objeto MatchData se uma correspondência for encontrada e,
# caso contrário, retorna nil:

'food'.match(/foo/) # => #<MatchData "foo">
'food'.match(/bar/) # => nil

# Operador =~
# Retorna o índice da correspondência caso seja encontrada,
# caso contrário, retorna nil:

/bar/ =~ 'foo bar' # => 4
'foo bar' =~ /bar/ # => 4
/baz/ =~ 'foo bar' # => nil

# Método match?
# Retorna true se uma correspondência for encontrada,
# false caso contrário:

'food'.match?(/foo/) # => true
'food'.match?(/bar/) # => false
