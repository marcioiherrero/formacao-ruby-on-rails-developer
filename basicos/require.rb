# __FILE__ -> constante que contém o caminho completo + nome do arquivo atual.
puts __FILE__

caminho_arquivo = File.expand_path(__FILE__)
puts File.dirname(caminho_arquivo)

# require - requisita arquivo .rb com caminho absoluto.
# require_relative -> requisita arquivo .rb com caminho relativo.

require File.dirname(caminho_arquivo) + '/funcao-require'
# require_relative 'funcao-require'

# chamando função que está contida no arquivo "funcao-require.rb"
funcao_require
