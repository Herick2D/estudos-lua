math.randomseed(os.time())

local valor = math.random(100)
local tentativas = 1

print("Adivinhe o valor")
local num = io.read("*number")
while num ~= valor do
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