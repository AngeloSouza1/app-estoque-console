require_relative "display/menu"
require_relative "display/operacoes_de_tela"
require_relative "core/cadastrar_produto"
require_relative "core/listar_produtos"
require_relative "core/retirar_estoque"

produtos = [
  {
      id: 1,
      nome: "Macã",
      descricao: "Maçã - Turma da Mônica",
      preco: 2.5,
      quantidade: 20
  },
  {
      id: 2,
      nome: "Banana",
      descricao: "Nanica",
      preco: 1.5,
      quantidade: 30
}
]

limpar_tela
iniciar_menu(produtos)