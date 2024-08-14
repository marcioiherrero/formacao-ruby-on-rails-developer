def funcao_sem_parametros
    puts "Olá estou em uma função"
end

def funcao_com_parametro(nome)
    puts "Você passou o nome #{nome}"
end

def funcao_com_parametros(nome, idade)
    puts "Você passou o nome #{nome} com a idade #{idade}"
end

funcao_sem_parametros
funcao_com_parametro("Fulano")
funcao_com_parametro "Marcio"
funcao_com_parametros("Ciclano", 20)

def funcao_com_parametro_com_valor_padrao(nome = "Beltrano")
    puts "Você passou o nome #{nome} na função com nome padrão Beltrano"
end

funcao_com_parametro_com_valor_padrao
funcao_com_parametro_com_valor_padrao "Outra pessoa"

def funcao_com_parametro_array(array = [])
    puts "Função com array - " + array.inspect
end

funcao_com_parametro_array
funcao_com_parametro_array([1, 2, 3])
funcao_com_parametro_array([4, 5, 6])

def funcao_com_parametro_hash(hash = {})
    puts "Função com hash - " + hash.inspect
end

funcao_com_parametro_hash
funcao_com_parametro_hash({nome: "teste"})
funcao_com_parametro_hash({nome: "teste", idade: 23})

def funcao_com_varios_parametros(*parametros)
    puts "funcao_com_varios_parametros - " + parametros.inspect
end

funcao_com_varios_parametros
funcao_com_varios_parametros(1, 2, 4)
funcao_com_varios_parametros("1", 2.5, 4)

def soma(a, b)
    return a + b
end

def soma_sem_return(a, b)
    # return é opcional
    # a expressão da últinha linha é o retorno do método
    a + b
end

x = soma(1, 2)
y = soma_sem_return(1, 2)

puts "O resultado de x = #{x} e o resultado de y = #{y}"

def soma_onde_retorna_resultado_se_valor_maior_que_cinco(a, b)
    c = a + b
    return c if c > 5
    c * 20
end

puts "O resutlado é: " + soma_onde_retorna_resultado_se_valor_maior_que_cinco(1, 2).to_s
puts "O resultado é: " + soma_onde_retorna_resultado_se_valor_maior_que_cinco(3, 3).to_s


# bloco -> é uma função anônima que pode ou não receber parâmetros...
def funcao_com_bloco
    # yield -> chama o bloco passado na função.
    # caso necessite utilizar o yield, obrigatoriamente quem for utilziar esta função
    # terá que passar um bloco senão vai lançar a exceção: "no block given (yield)".
    # para contornar isso, podemos fazer a chamada do bloco com yield somente se um
    # bloco for dado como parâmetro utilizando a função: "block_given?"
    yield if block_given?
end

funcao_com_bloco

funcao_com_bloco { puts "Bloco sendo executado!" }

funcao_com_bloco do
    puts "Bloco 1 sendo executado!"
    puts "Bloco 2 sendo executado!"
    puts "Bloco 3 sendo executado!"
    puts "Bloco 4 sendo executado!"
    puts "Bloco 5 sendo executado!"
end

