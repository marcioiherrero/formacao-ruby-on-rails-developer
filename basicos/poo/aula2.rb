class Pessoa
    attr_accessor :nome, :sobrenome
    
    # em métodos, podemos utilizar parâmetros nomeados
    # com ":" na frente do nome do atributo e podemos
    # atribuir valor padrão:
    # Ex:-> nome: "nome padrão"
    def initialize(nome:, sobrenome: "Silva", idade:)
        @nome = nome
        @sobrenome = sobrenome
        @idade = idade
    end
    
    def mostrar_nome_completo
        "#{@nome} #{@sobrenome} com idade: #{@idade}"
    end
end

a = Pessoa.new(nome: "Joãozinho", idade: 20, sobrenome: "Santos")
puts a.mostrar_nome_completo

b = Pessoa.new(nome: "Mariazinha", idade: 18)
puts b.mostrar_nome_completo

c = Pessoa.new(idade: 4, nome: "Piazinha")
puts c.mostrar_nome_completo
