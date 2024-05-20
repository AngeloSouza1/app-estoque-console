require_relative "display/menu"
require_relative "display/operacoes_de_tela"
require_relative "core/cadastrar_produto"
require_relative "core/listar_produtos"

produtos = [
  {
      id: Time.now.to_i,
      nome: "Maca",
      descricao: "Maçã - Turma da Mônica",
      preco: 2.5,
      quantidade: 20
  },
  {
      id: Time.now.to_i,
      nome: "Banana",
      descricao: "Nanica",
      preco: 1.5,
      quantidade: 30
}
]
iniciar_menu(produtos)