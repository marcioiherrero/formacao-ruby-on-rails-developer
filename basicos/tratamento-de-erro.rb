# begin..rescue..end:
# bloco de código para captura de erros
begin
    1 / 0
rescue ZeroDivisionError
    puts "1. Você tentou dividir por zero."
end

begin
    1 + "1"
rescue TypeError
    puts "2. Você tentou converter tipos diferentes."
end


# pode utilizar mais de um rescue
begin
    1 + "0"
rescue ZeroDivisionError
    puts "5. Você tentou dividir por zero."
rescue TypeError
    puts "5. Você tentou converter tipos diferentes."
end


# Exception => e | ou | => e: armazena o tipo de exceção na variável
begin
    1 / 0
rescue Exception => e
    # armazena a instância da exceção Exception na variável (e).
    puts "4. Aconteceu um erro abaixo:"
    puts "4.   Mensagem do erro:"
    puts e.message
    puts "4.   Mensagem do erro completa:"
    puts e.full_message
    puts "4.   O que causou o erro:"
    puts e.backtrace
end

begin
    1 / 0
rescue => e
    # => e: armazena a instância da exceção genérica na variável (e).
    puts "3. Aconteceu o seguinte erro: #{e}"
end


# else: executa código caso não ocorra exceção.
begin
    2 / 2
rescue ZeroDivisionError
    puts "6. Você tentou dividir por zero."
else
    puts "6. Nenhum erro foi lançado."
end


# ensure: garante a execução do código independente de erro.
begin
    2 / 2
    puts "7. Iniciou conexão com BD."
rescue ZeroDivisionError
    puts "7. Você tentou dividir por zero."
ensure
    puts "7. Finalizou a conexão com o BD."
end


# raise: lança uma exceção.
begin
    puts "8. raise - Lançando uma exceção."
    soma = 2 + 2
    soma = 3
    if soma == 3
      raise "8. Erro forçado."
    end
end
