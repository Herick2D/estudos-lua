local pontosDeVida = 3
local temAmuleto = false
local jaAcordou = false

::salaDeEspera:: do
    if not jaAcordou then
        print("Você acaba de acordar, um cheiro nauseante de salmoura e podridão invade suas narinas. Suas roupas estão molhadas, e sua mente está envolta em uma névoa de confusão.")
        print("Você está no início de um corredor escuro e úmido. Cinco portas estão à sua frente, cada uma marcada com um símbolo antigo: [I, II, III, IV, V].")
        jaAcordou = true
    end
    print("Pontos de vida restantes: " .. pontosDeVida)
    print("Para onde deseja ir? [I, II, III, IV, V]")
    local escolha = io.read()

    if escolha == "I" or escolha == "i" or escolha == "1" then
        goto salaI
    elseif escolha == "II" or escolha == "ii" or escolha == "2" then
        goto salaII
    elseif escolha == "III" or escolha == "iii" or escolha == "3" then
        goto salaIII
    elseif escolha == "IV" or escolha == "iv" or escolha == "4" then
        goto salaIV
    elseif escolha == "V" or escolha == "v" or escolha == "5" then
        goto salaV
    else
        print("Tenho certeza de que sua confusão não fez com que você esquecesse de como se lê. Tente novamente.")
        goto salaDeEspera
    end
end

::salaI:: do
    print("Você entra na Sala I. O ar é pesado, e o chão está coberto por uma substância viscosa e brilhante.")
    print("De repente, tentáculos emergem das sombras, tentando agarrá-lo!")
    print("Você consegue se esquivar do agarrão dos tentáculos, mas eles te expulsam da sala com uma força desumana.")
    print("Você retorna para o cômodo principal, mas perde 1 ponto de vida por causa do impacto dos tentáculos.")
    pontosDeVida = pontosDeVida - 1
    if pontosDeVida <= 0 then
        goto derrotado
    else
        print("Pontos de vida restantes: " .. pontosDeVida)
        print("Você volta para o corredor principal.")
        goto salaDeEspera
    end
end

::salaII:: do
    print("Na Sala II, você encontra um antigo altar coberto de runas brilhantes. Um sussurro ecoa em sua mente, prometendo poder em troca de sua sanidade.")
    print("Você tenta resistir, mas a voz insidiosa invade seus pensamentos, corroendo sua mente.")
    print("A pressão mental é insuportável, e você é forçado a recuar, expulso da sala por uma força invisível.")
    print("Você perde 1 ponto de vida devido ao esforço de resistir à insanidade.")
    pontosDeVida = pontosDeVida - 1
    if pontosDeVida <= 0 then
        goto derrotado
    else
        print("Pontos de vida restantes: " .. pontosDeVida)
        print("Você volta para o corredor principal, sentindo-se mais fraco.")
        goto salaDeEspera
    end
end

::salaIII:: do
    print("A Sala III está envolta em uma escuridão quase palpável. No centro, você vê um antigo amuleto brilhando com uma luz tênue.")
    print("Você pega o amuleto e sente uma estranha energia percorrer seu corpo. Este item pode ser a chave para sua escape!")
    temAmuleto = true
    print("Pontos de vida restantes: " .. pontosDeVida)
    print("Você volta para o corredor principal.")
    goto salaDeEspera
end

::salaIV:: do
    print("Ao entrar na Sala IV, você é recebido por uma criatura grotesca, semelhante a um peixe humanoide. Ele avança em sua direção!")
    print("Você tenta lutar, mas a criatura é forte demais. Seus golpes são ineficazes, e você é jogado contra a parede.")
    print("A criatura te expulsa da sala com um rugido ensurdecedor, e você perde 2 pontos de vida devido aos ferimentos.")
    pontosDeVida = pontosDeVida - 2
    if pontosDeVida <= 0 then
        goto derrotado
    else
        print("Pontos de vida restantes: " .. pontosDeVida)
        print("Você consegue fugir de volta para o corredor principal.")
        goto salaDeEspera
    end
end

::salaV:: do
    if temAmuleto then
        print("Você entra na Sala V. O amuleto em suas mãos brilha intensamente, e uma porta secreta se abre diante de você.")
        print("Você escapa do lugar, deixando para trás os horrores que testemunhou.")
        goto vencedor
    else
        print("Você entra na Sala V, mas nada acontece. Parece que falta algo para ativar a saída.")
        print("Pontos de vida restantes: " .. pontosDeVida)
        print("Você volta para o corredor principal.")
        goto salaDeEspera
    end
end

::derrotado::
print("Sua jornada termina aqui. Os horrores deste lugar consumiram sua mente e corpo. Você se torna mais uma vítima dos Mitos de Cthulhu.")
goto fim

::vencedor::
print("Você conseguiu escapar! O amuleto o protegeu dos horrores além da compreensão humana. Mas você sabe que isso foi apenas o começo...")
goto fim

::fim::
print("Fim do jogo. Obrigado por jogar!")
print("Desenvolvido por Herick2D - https://github.com/Herick2D")