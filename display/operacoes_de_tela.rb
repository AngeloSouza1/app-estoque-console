def mensagem(msg, usar_limpar_tela=true, usar_timer=true, timer=3)
  limpar_tela if usar_limpar_tela
  puts msg
  sleep(timer) if usar_timer
  limpar_tela if usar_limpar_tela
end

def mensagem_verde(msg, usar_limpar_tela=true, usar_timer=true, timer=3)
  msg =  "\e[32m#{msg}\e[0m"
  mensagem(msg, usar_limpar_tela, usar_timer, timer)
end

def mensagem_vermelho(msg, usar_limpar_tela=true, usar_timer=true, timer=3)
  msg =  "\e[31m#{msg}\e[0m"
  mensagem(msg, usar_limpar_tela, usar_timer, timer)
end

def mensagem_amarelo(msg, usar_limpar_tela=true, usar_timer=true, timer=3)
  msg =  "\e[33m#{msg}\e[0m"
  mensagem(msg, usar_limpar_tela, usar_timer, timer)
end

def mensagem_azul(msg, usar_limpar_tela=true, usar_timer=true, timer=3)
  msg =  "\e[34m#{msg}\e[0m"
  mensagem(msg, usar_limpar_tela, usar_timer, timer)
end



def limpar_tela
  if Gem.win_platform?
    system("cls") # No windows
  else
    system("clear") # Em sistemas unix/linux
  end
end


