local pontosDevida = 3

::salaDeEspera:: do
    print("Você acaba de acordar, um cheiro nauseante, roupas molhadas e uma total confusão")
    print("Você está no inicio do corredor, cinco portas estão a sua frente, cada uma com um número")
    print("Deseja ir para qual sala? [I, II, III, IV, V]")
    local escolha = io.read()

    if escolha == "I" or escolha == "i" then
        goto salaI
    elseif escolha == "II" or escolha == "ii" then
        goto  salaII
    elseif escolha == "III" or escolha == "iii" then
        goto salaIII
    elseif escolha == "IV" or escolha == "iv" then
        goto salaIV
    elseif escolha == "V" or escolha == "v" then
        goto salaV
    else
        print("Tenho certeza que sua confusão não fez com que você esquecesse de como se lê");
        goto salaDeEspera
    end

end

::salaI:: do
end

::salaII:: do
end

::salaIII:: do
end

::salaIV:: do
end

::salaV:: do
end

::derrotado::
print("")
goto fim

::vencedor::
print("")
goto fim

::fim::
print("")