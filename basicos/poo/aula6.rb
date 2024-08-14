class Carro
    attr_accessor :id, :nome, :descricao
    
    def andar
        # self: -> em método de instância retorna a própria instância.
        puts "método de instância da instância #{self} - O carro está andando"
    end
    
    def self.andar
        # self: -> em método de classe retorna a própria classe.
        puts "método de classe da classe #{self} - O carro está andando"
    end
end

a = Carro.new
a.nome = "Sportage"
a.andar

Carro.andar
