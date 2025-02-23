print("O dia hoje está ensolarado?")
local resp = io.read()

if resp == "sim" or resp == "s" then
    goto sol
else
    goto chuva
end

::sol::
print("Hoje é dia de praia!")
print("Dia de cachoeira!")
goto fim

::chuva::
print("Hoje é dia de filminho")
print("Dia de pipoca com a consagrada!")
goto fim -- boa pratica sempre direcionar para um bloco fim

::fim::
print("Fim do programa!")