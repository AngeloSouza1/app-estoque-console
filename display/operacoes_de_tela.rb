def mensagem(msg, timer=3)
  limpar_tela
  puts msg
  sleep(timer)
  limpar_tela
end

def limpar_tela
  if Gem.win_platform?
    system("cls") # No windows
  else
    system("clear") # Em sistemas unix/linux
  end
end

def verde(texto)
  "\e[32m#{texto}\e[0m"
end

def vermelho(texto)
  "\e[31m#{texto}\e[0m"
end
def amarelo(texto)
  "\e[33m#{texto}\e[0m"
end