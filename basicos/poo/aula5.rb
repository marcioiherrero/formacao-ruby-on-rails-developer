class Carro
    attr_accessor :id, :nome, :descricao
    
    def andar
        puts "O carro #{nome} está andando"
    end
    
    def nome_preenchido?
        @nome != '' && @nome != nil
    end
    
    def nome_maiusculo
        @nome.upcase if nome_preenchido?
    end
    
    def nome_maiusculo!
        @nome = @nome.upcase if nome_preenchido?
        @nome
    end
end

a = Carro.new
a.nome = "Sportage"
a.nome_maiusculo!
puts a.nome_preenchido?
a.andar
