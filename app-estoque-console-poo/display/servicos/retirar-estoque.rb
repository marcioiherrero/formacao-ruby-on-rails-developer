require_relative '../../lib/ruby/3.3.0/gems/terminal-table-3.0.2/lib/terminal-table'

def retirar_estoque
    limpar_tela
    
    mensagem_amarelo("==== Escolha um produto abaixo ====", false, false)
    
    table = Terminal::Table.new do |t|
        t.headings = ['ID', 'Nome', 'Qtde']
        ProdutoServico.todos.each do |row|
            t.add_row([ row.id, row.nome, row.qtde ])
        end
    end
    
    puts table
    
    mensagem_azul("Digite o ID do produto:", false, false)
    id = gets.chomp.to_i
    produto = ProdutoServico.todos.find {|p| p.id == id}
    unless produto
        mensagem_vermelho("Produto do ID (#{id}) não encontrado na lista.", false, false)
        mensagem_amarelo("Deseja digitar o número novamente? (S/N)", false, false)
        opcao = gets.chomp.downcase
        limpar_tela
        
        if opcao == 's' || opcao == 'sim'
            retirar_estoque
        end
        
        return
    end
    
    mensagem_verde("Qtde. atual: #{amarelo(produto.qtde)}", false, false)
    mensagem_azul("Digite a qtde. a retirar do estoque do produto #{amarelo(produto.nome)}?", false, false)
    qtde_retirada = gets.to_i
    produto.qtde = produto.qtde - qtde_retirada
    
    ProdutoServico.atualizar(produto)
    
    mensagem_verde("Retirada realizada com sucesso!", true, true, 3)
    listar_produtos
    
end
