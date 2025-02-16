print('Digite seu nome:')
local name = io.read() -- Função nativa de entrada e saída 'io'- input / output
print(type(name)) -- Todo tipo ao usar o método read() é uma string
print('Olá', name)

local function soma(n1, n2)
    return n1 + n2
end

print('Digite um valor numérico')
local valor = io.read("*number")
print('Digite outro valor numérico')
local valor2 = io.read("*number")
print('A soma dos valores é de: ', soma(valor, valor2))