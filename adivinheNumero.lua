math.randomseed(os.time()) -- essa lógica serve para que sempre que o math for usado, ele altere o número, caso contrário o número seria estático (não sei se entendi muito bem, mas o lua parece esquisito nessa parte)

local valor = math.random(100) -- variável que terá um valor aleatório de 1 a 100
local tentativas = 1 -- marca as tentativas do usuário

print("Adivinhe o valor")
local num = io.read("*number")
while num ~= valor do -- lógica do jogo
    tentativas = tentativas + 1
    if (num < valor) then
        print("Seu valor foi menor")
    elseif (num > valor) then
        print("Seu valor foi maior")
    end
    print("Digite o valor")
    num = io.read("*number")
end
print("Acertou em "..tentativas.." tentativas")