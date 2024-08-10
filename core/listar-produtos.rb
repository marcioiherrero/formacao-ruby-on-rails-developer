require_relative '../lib/ruby/3.3.0/gems/terminal-table-3.0.2/lib/terminal-table'

def listar_produtos(produtos)
    
    limpar_tela
    
    mensagem_amarelo("==== Lista de produtos ====", false, false)
    
    table = Terminal::Table.new do |t|
        t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Qtde']
        produtos.each do |row|
            t.add_row([ row[:id], row[:nome], row[:descricao], row[:preco], row[:qtde] ])
        end
    end
    
    puts table
    
    mensagem_amarelo("Pressione ENTER para continuar...", false, false)
    gets
    
end
