class ProdutoServico # unti of work
  @@produtos =[]
    def self.todos
      @@produtos
    end

  def self.adicionar(produto)
    @@produtos << produto
  end
end