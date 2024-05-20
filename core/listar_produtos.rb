require 'terminal-table'

def listar_produtos(produtos)
  mensagem_amarelo("==== Lista de produtos... ====", false, false, 1)
  # Criar tabela
  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Quantidade']
    produtos.each do |row|

      t.add_row([row[:id], row[:nome], row[:descricao], row[:preco], row[:quantidade]])
    end
  end
  puts table
end
