# molde para criação de objeto
class Pessoa
    # Definição de atributos de forma enxuta.
    # attr_accessor -> cria atributos e seus métodos
    # getters e setters:
    attr_accessor :nome, :sobrenome
    
    # attr_reader -> cria atributos e seus métodos
    # getters:
    # attr_reader :nome, :sobrenome
    
    # attr_writer -> cria atributos e seus métodos
    # setters:
    # attr_writer :nome, :sobrenome
    
    # Definição de atributos de forma tradicional:
    # criando atributos com @: @nome e @sobrenome e
    # criando seus métodos getters e setters.
    #
    # #método get
    # def nome
    #     @nome
    # end
    
    # #método set
    # def nome=(value)
    #     @nome = value
    # end
    
    # #método get
    # def sobrenome
    #     @sobrenome
    # end
    
    # #método set
    # def sobrenome=(value)
    #     @sobrenome = value
    # end
    
    def mostrar_nome_completo
        "#{@nome} #{@sobrenome}"
    end
end

# criando instância do objeto
a = Pessoa.new
a.nome = "Joãozinho"
puts a.nome

tio_sam = Pessoa.new
tio_sam.nome = "Tio"
tio_sam.sobrenome = "Sam"

puts tio_sam.mostrar_nome_completo
