-- Jogo de escolhas simples usando labels e goto

::inicio::
print("Você está em uma floresta escura. Há dois caminhos à sua frente.")
print("1. Seguir pelo caminho da esquerda.")
print("2. Seguir pelo caminho da direita.")
print("Escolha uma opção (1 ou 2):")

local escolha = io.read()

if escolha == "1" then
    goto caminho1
elseif escolha == "2" then
    goto caminho2
else
    print("Escolha inválida! Tente novamente.")
    goto inicio
end

::caminho1::
print("Você escolheu o caminho da esquerda.")
print("Você encontra uma caverna iluminada. O que você faz?")
print("1. Entrar na caverna.")
print("2. Voltar para o início.")
print("Escolha uma opção (1 ou 2):")

escolha = io.read()

if escolha == "1" then
    print("Você entra na caverna e encontra um tesouro brilhante! Parabéns, você venceu!")
    print("\n---")
    print("Este jogo é um caso de estudo e foi desenvolvido por Herick Moreira (Herick2D no GitHub).")
    print("Obrigado por testar!")
    return
elseif escolha == "2" then
    goto inicio
else
    print("Escolha inválida! Tente novamente.")
    goto caminho1
end

::caminho2::
print("Você escolheu o caminho da direita.")
print("Você encontra um rio perigoso. O que você faz?")
print("1. Tentar atravessar o rio.")
print("2. Voltar para o início.")
print("Escolha uma opção (1 ou 2):")

escolha = io.read()

if escolha == "1" then
    print("Você tenta atravessar o rio, mas a correnteza é forte e você é arrastado. Fim do jogo.")
    return
elseif escolha == "2" then
    goto inicio
else
    print("Escolha inválida! Tente novamente.")
    goto caminho2
end