class CartaoCredito
    # Assessores publicos
    # Estes assessores não deveriam existir
    # pois podem ser utilizados por qualquer um
    attr_accessor :cartao_public, :valor_public
     
    # Estes métodos controlam os assessores privados
    # Os encapsulando e permitindo quaisquer tipo de validações
    # como por exemplo usuários que podem utilizar a função
     
    def setCartao(cartao)
      @cartao = cartao
    end
     
    def getCartao()
      @cartao
    end
     
    def setValor(valor)
      @valor = valor
    end
     
    def getValor()
      return @valor
    end
    
    private
    
    attr_accessor :cartao, :valor
 end
   
# Os assessore públicos são visíveis para qualquer pessoa
c1 = CartaoCredito.new

# Acesso direto 
c1.cartao_public= "1234 5678 8900 1236"
c1.valor_public= 1234.56

puts "Acesso publico - Qualquer pessoa pode utiliza-lo"
puts "Cartão 1: " + c1.cartao_public + " ---- Valor: R$ " + String(c1.valor_public)

c2 = CartaoCredito.new

# c2.cartao="1234 5678 8900 1236"
# Caso tente acessar o metodo privado obterá o seguinte erro:
# private method `cartao=' called for #<CartaoCredito:0x00000001360e38>
# não possibilitando acesso direto ao assessor cartão

# Você deve permitir acesso aos assessores privados
# através do encapsulamento utilizando métodos públicos
# O método correto seria:

c2.setCartao("4567 1234 7890 3456")
c2.setValor(3456.89)

puts "\nAcesso privado - Você permite que utilizem através de métodos"
puts "Cartão 2: " + c2.getCartao + " ---- Valor: R$ " + String(c2.getValor)
