print('Digite seu nome:')
local name = io.read() -- Função nativa de entrada e saída 'io'- input / output
print(type(name)) -- Todo tipo ao usar o método read() é uma string
print('Olá', name)

-- Declaração de uma função local
local function soma(n1, n2)
    return n1 + n2
end

print('Digite um valor numérico')
local valor = io.read("*number") -- conversão do valor recebido via read() para number
print('Digite outro valor numérico')
local valor2 = io.read("*number")
print('A soma dos valores é de: ', soma(valor, valor2))

--  No teste acima imputar um valor que não pode ser convertido pelo read("*number")
--  implica em um arithmetic stack traceback

local parte1, parte2, parte3
parte1 = 'Essa frase'
parte2 = ' pode ser '
parte3 = 'concatenada de forma correta'

print(parte1 .. parte2 .. parte3) -- Na linguagem Lua para concaternamos usamos o uso dos ".."

-- Entendendo conceitos da função gsub para trabalhos com string
local info1, info2, aux

info1 = 'Olá eu me chamo Herick'
info2 = 'Karina'

aux = string.gsub(info1, 'Herick', info2) -- utilização do método gsub da classe string para trabalhos com string.
-- gsub espera três parâmetros, sendo o primeiro a string a ser alterada, o segundo parâmetro é o que será substituido e o terceiro parâmetro é o que vai substituir.
print(aux)