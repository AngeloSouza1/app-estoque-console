require_relative "display/menu"
require_relative "display/operacoes_de_tela"
require_relative "display/servicos/cadastrar_produto"
require_relative "display/servicos/listar_produtos"
require_relative "display/servicos/retirar_estoque"
require_relative "dominio/entidades/produto"
require_relative "dominio/servicos/produto_servico"

ProdutoServico.adicionar(Produto.new({
                                       id: 1,
                                       nome: "Macã",
                                       descricao: "Maçã - Turma da Mônica",
                                       preco: 2.5,
                                       quantidade: 20
                                     }))

ProdutoServico.adicionar(Produto.new({
                                       id: 2,
                                       nome: "Banana",
                                       descricao: "Nanica",
                                       preco: 1.5,
                                       quantidade: 30
                                     }))

limpar_tela
iniciar_menu
