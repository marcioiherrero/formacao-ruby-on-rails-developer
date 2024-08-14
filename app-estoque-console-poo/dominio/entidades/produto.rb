# classe anêmica
class Produto
	attr_accessor :id, :nome, :descricao, :preco, :qtde
	
	def initialize(produto_hash)
		@id = produto_hash["id"]
		@nome = produto_hash["nome"]
		@descricao = produto_hash["descricao"]
		@preco = produto_hash["preco"]
		@qtde = produto_hash["qtde"]
	end
end
