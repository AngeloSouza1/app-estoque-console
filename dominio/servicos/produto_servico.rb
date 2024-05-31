require 'json'

class ProdutoServico
  def initialize(repo, arquivo)
    @repo = repo
    @arquivo = arquivo
  end

  def todos
    dados = @repo.ler(@arquivo)
    produtos = []
    dados.each do |dado|
      produtos << Produto.new(dado)
    end
    produtos
  end

  def adicionar(produto)
    produto_hash = transformar_para_hash(produto)
    @repo.adicionar(@arquivo, produto_hash)
  end

  def atualizar(produto)
    dados = @repo.ler(@arquivo)
    produto_hash = dados.find { |dado| dado["id"] == produto.id }
    if produto_hash
      produto_hash["nome"] = produto.nome
      produto_hash["descricao"] = produto.descricao
      produto_hash["preco"] = produto.preco
      produto_hash["quantidade"] = produto.quantidade

      @repo.gravar(@arquivo, dados)
      puts "Produto atualizado com sucesso."
    else
      puts "Produto não encontrado."
    end
  end

  private

  def transformar_para_hash(produto)
    produto.instance_variables.each_with_object({}) do |var, hash|
      hash[var.to_s.delete("@")] = produto.instance_variable_get(var)
    end
  end
end
