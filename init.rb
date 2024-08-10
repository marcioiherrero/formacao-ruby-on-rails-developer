require_relative 'display/menu'
require_relative 'display/operacoes-de-tela'
require_relative 'core/cadastrar-produto'
require_relative 'core/listar-produtos'
require_relative 'core/retirar-estoque'

produtos = [
    {
        id: 1000,
        nome: 'Maçã',
        descricao: 'Maçã da turma da mõnica',
        preco: 2.5,
        qtde: 20
    },
    {
        id: 1001,
        nome: 'Banana',
        descricao: 'Banana nanica',
        preco: 1.5,
        qtde: 30
    }
]

iniciar_menu(produtos)

