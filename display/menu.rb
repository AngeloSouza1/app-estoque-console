def iniciar_menu
  loop do
    puts "Escolha uma das opções abaixo:"
    puts "1 - Cadastro de produtos"
    puts "2 - Lista de produtos"
    puts "3 - Retirada de estoque"
    puts "4 - Sair"

    opcao = get.to_i

    case opcao
    when 1
        puts "Cadastro de produtos"
    when 2
        puts "Lista"
    when 3
        puts "retirada"
    when 4
        exit
    else
      puts "Opção inválida"
    end
  end
end