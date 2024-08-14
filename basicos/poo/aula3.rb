class Pessoa
    # por padrão todos os métodos e atributos são public
    
    attr_accessor :nome, :sobrenome
    
    def initialize(nome:, sobrenome: "Silva", idade:)
        @nome = nome
        @sobrenome = sobrenome
        @idade = idade
    end
    
    # daqui para baixo tudo é private
    private
    
    def mostrar_nome_completo_private
        "#{@nome} #{@sobrenome} com idade: #{@idade}"
    end
    
    # daqui para baixo tudo é public
    public
    
    def mostrar_nome_completo
        mostrar_nome_completo_private
    end
end

a = Pessoa.new(nome: "Joãozinho", idade: 20, sobrenome: "Santos")
# puts a.mostrar_nome_completo_private
puts a.mostrar_nome_completo
