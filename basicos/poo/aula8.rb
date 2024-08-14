# Classe abstrata
# É um tipo de classe especial que não pode ser instanciada,
# apenas herdada. Essas classes são muito importantes quando
# não queremos criar um objeto a partir de uma classe “geral”,
# apenas de suas “subclasses”.
# Ela é uma classe que apenas idealiza um tipo, define somente
# um rascunho;

class Veiculo
    attr_accessor :id, :nome, :descricao
    
    def initialize
        raise "Erro: classe abstrata não pode ser criada"
    end
    
    def andar
        "método andar comum a todas as subclasses"
    end
end

class Carro < Veiculo
    def initialize(nome)
        @nome = nome
    end
end

# a = Veiculo.new <- Erro
puts Carro.new("Sportage").andar
