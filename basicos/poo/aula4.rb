class Pessoa
    attr_accessor :nome, :sobrenome
    
    def initialize(nome:, sobrenome: "Silva", idade:)
        @nome = nome
        @sobrenome = sobrenome
        @idade = idade
    end
    
    private
    # métodos privados são acessados somente dentro da própria classe.
    
    def mostrar_nome_completo_private
        "#{@nome} #{@sobrenome} com idade: #{@idade}"
    end
    
    public
    
    def mostrar_nome_completo
        mostrar_nome_completo_private
    end
    
    def metodo_para_sobrescrever
        "comportamento da classe base"
    end
    
    protected
    # métodos protegidos são acessados dentro da própria classe
    # e na suas subclasses.
    
    def mostrar_nome_completo_protected
        "acessando método protegido"
    end
end

class Joao < Pessoa
    def initialize(nome, sobrenome, idade)
        @nome = nome
        @sobrenome = sobrenome
        @idade = idade
    end
    
    def o_que_a_pessoa_faz?
        x = mostrar_nome_completo_protected
        "A pessoa #{self.nome} anda!"
    end
    
    def metodo_para_sobrescrever
        # super: -> chama o método da classe base
        super + " - mudei o comportamento"
    end
    
    # em Ruby não existe oveloading
    # se tiver mais de um método com o mesmo nome
    # o Ruby vai considerar o último declarado.
    # então o método abaixo: metodo_com_mesmo_nome
    # NÃO vai ser considerado pelo Ruby.
    # Uma alternativa a isso é utilizar método com
    # parâmetros com valores padrão, caso um parâmetro
    # não seja obrigatório a fornecer.
    def metodo_com_mesmo_nome
        "metodo_com_mesmo_nome_sem_parametros"
    end
    
    # o Ruby vai considerar este método.
    def metodo_com_mesmo_nome(nome = "Nome padrão")
        "Seu nome é: #{nome}"
    end
end

a = Pessoa.new(nome: "Pessoa", idade: 20)
# puts a.mostrar_nome_completo_private
puts a.mostrar_nome_completo
puts a.metodo_para_sobrescrever

b = Joao.new("Joao", "Antonio", 16)
# puts a.mostrar_nome_completo_private
puts b.mostrar_nome_completo
puts b.o_que_a_pessoa_faz?
puts b.metodo_para_sobrescrever
puts b.metodo_com_mesmo_nome
