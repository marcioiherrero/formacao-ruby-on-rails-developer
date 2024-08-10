def cadastrar_produto(produtos)
    
    limpar_tela
    mensagem("Cadastro de produto", false, false)
    mensagem("", false, false)
    
    mensagem_azul("Digite o nome do produto", false, false)
    nome = gets.chomp
    
    mensagem_azul("Digite a descrição do produto: (#{verde(nome)})", false, false)
    descricao = gets.chomp
    
    mensagem_azul("Digite o preço do produto: (#{verde(nome)})", false, false)
    preco = gets.chomp.to_f
    
    mensagem_azul("Digite a quantidade em estoque do produto: (#{verde(nome)})", false, false)
    qtde_estoque = gets.chomp.to_i
    
    produtos << {
        id: Time.now.to_i,
        nome: nome,
        descricao: descricao,
        preco: preco,
        qtde: qtde_estoque
    }
    
    mensagem("O produto #{amarelo(nome)} foi cadastrado com sucesso!", false, true, 2)
    
end
