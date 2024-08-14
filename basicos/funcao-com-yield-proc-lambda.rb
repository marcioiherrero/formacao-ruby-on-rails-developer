=begin
--------------------------------------------------------------------
Todos os métodos implícitamente recebem um bloco como último
parâmetro, não sendo necessário explicitar que o bloco será
passado a menos que precise referenciá-lo dentro do método
(para passar para outro método, por exemplo) sendo nesse caso
devemos utilizar o símbolo "&" e deixar como último parâmetro.

No entanto não é possível passar mais de um bloco para o método.
Para este objetivo precisamos usar lambdas ou procs.

Blocos são como pequenos pedaços de código que podem ser
manipulados e enviados entre os métodos dos objetos
(tendo eles próprios, comportamento de métodos).

Para chamar o bloco devemos utilizar a palavra reservada: "yield".
O yield aceita passagem de argumentos entre || e quantos argumentos
forem necessários.
--------------------------------------------------------------------
=end


puts
puts "# ===== BLOCK/YIELD ====="
def my_method
    yield if block_given?
end

my_method { puts "Bloco {} sendo executado!" }
my_method do
    puts "Bloco do..end sendo executado!"
end
puts

puts
def my_method2(a, &bloco)
    puts "my_method2 com bloco como parâmetros sendo executado!"
    puts "#{a}"
    yield
end
puts my_method2("parametro1") { puts "bloco aqui" }


# Exemplo que precisamos explicitar um bloco:
# Neste cenário, precisamos referenciar o blocoX
# para um outro método: my_method_ex.
def my_method_ex(param1)
    puts param1
    yield if block_given?
end
def my_method2(a, &blocoX)
    puts "my_method2 recebendo um blocoX sendo executado!"
    puts "#{a}"
    my_method_ex("teste", &blocoX)
end
# chamando my_method2
# saída esperada:
# my_method2 recebendo um blocoX sendo executado!
# olá
# teste
# atenção
my_method2("olá") do
    puts "atenção"
end
puts


# Podemos passar argumentos en yield, geralmente
# usado para retornar algum valor de processamento.
puts "yield com argumentos"
def each(array)
    i = 0
    while i < array.count
        # passando cada elemento do array
        # como primeiro argumento ao bloco
        yield array[i] if block_given?
        i += 1
    end
end
a = ["um", "dois", "três"]
each(a) do |elemento|
    puts elemento
end
puts



puts "===== PROC ====="
say_hello_proc = Proc.new { puts "Proc say_hello_proc sendo executado!" }
say_hello_proc.call

# função que recebe uma proc como parâmetro
def execute_proc(p)
    p.call
end

my_proc = proc { puts "Proc my_proc_proc sendo executado!" }
execute_proc(my_proc)

# proc pode receber parâmetros entre ||
multiply_proc = Proc.new do |a, b|
    puts "Proc multiply_proc com parâmetros sendo executado!"
    a * b if a && b # só faz a soma caso a e b sejam diferentes de nil
end

result = multiply_proc.call(6, 7)
puts result # -> 42
puts



puts "===== LAMBDA ou (->) ====="
say_goodbye_lambda = lambda { puts "Lambda say_goodbye_lambda sendo executado" }
say_goodbye_lambda.call

say_goodbye2_lambda = -> { puts "Lambda (->) say_goodbye2_lambda sendo executado!" }
say_goodbye2_lambda.call

# lambda pode receber parâmetros entre ||
adder_lambda = lambda do |a, b|
    puts "Lambda adder_lambda com parâmetros sendo executado!"
    a + b if a && b
end

result2 = adder_lambda.call(5, 8)
puts result2 # -> 13
puts


# === Diferença entre Lambda e Proc ===
# Lambda:
#   1. Verifica o número de argumentos passados para ele.
#   2. Se você passar um número errado de argumentos, lançará uma exceção.
# Proc:
#   1. Não verifica o número de argumentos passados para ele.
#   2. Se você passar um número errado de argumentos,
#      os argumentos não passados serão assumidos com valor nil.

puts "===== TESTANDO LAMBDA E PROC SEM PASSAR PARÂMETROS ====="
# sum = adder_lambda.call() # -> erro

result3 = multiply_proc.call()
puts result3 # -> 42
puts

# === return de lambda e proc ===
# O return em procs e lambdas não são feitos para retornar valores de expressão.
# Lambda:
#   1. interrompe a lambda voltando para quem a chamou.
# Proc:
#   1. interrompe a proc e também interrompe o método onde a chamou.

m_proc = proc do |a, b|
    puts "m_proc sendo executado!"
    puts
    return
end

m_lambda = lambda do |a, b|
    puts "m_lambda sendo executado!"
    puts
    return
end

puts "===== TESTANDO RETURN DE LAMBDA ====="
puts m_lambda.call(2, 2)
puts

puts "===== TESTANDO RETURN DE PROC ====="
puts m_proc.call(2, 2)
puts

puts "Essa linha nunca vai ser executada porque na proc m_proc foi passado o return"
