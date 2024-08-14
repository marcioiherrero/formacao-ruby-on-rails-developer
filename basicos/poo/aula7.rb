# No Ruby não tem interface.
# Podemos utilizar módulo como papel de interface.
# Para obrigar a implementar os métodos da "interface"
# podemos criar o métoodo e colocar um raise para
# disparar uma exceção de que o método não foi implementado.

module IVeiculoMetodos
    def andar
        raise "Erro: método não implementado"
    end
end

class Carro
    attr_accessor :id, :nome, :descricao
    
    include IVeiculoMetodos
    
    def andar
        puts "Carro está andando"
    end
end

a = Carro.new.andar
