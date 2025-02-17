print('hello world')
-- print em lua

-- declaração de variáveis em lua
nome = 'Herick'
nome2 = "Herick2"
-- strings podem ser declaradas tanto com aspas simples quanto com aspas duplas
descricao = [[
Strings formatadas com quebra de linha entre 
    dois colchetes
]]
-- a formatação pode ser declaração com a sintaxe da variável descricao

idade = 22;
-- Todos os números em lua são double

status = false;
-- boolean igual a outras linguas de programação

-- declaração de estruturas lógicas
if status then
    print('a variável status é: ', status)
end

if status then
    print('a variável status é: ', status)
elseif idade then
    print('idade existe: ', idade)
else
    print('variáveis não existem')
end
-- estrutura for
--o bloco do if começa na palavra reservada then e segue até o final da estrutura indicada pela palavra end

if not status then
    print('status não existe ou é falso')
end
-- palavra reservada not nega a expressão

-- Expressões lógicas em Lua

-- Maior que (>)
local valor1 = 10
local valor2 = 5
if valor1 > valor2 then
    -- Código a ser executado se valor1 for maior que valor2
    print(valor1, "é maior que", valor2)
end

-- Maior ou igual a (>=)
if valor1 >= valor2 then
    -- Código a ser executado se valor1 for maior ou igual a valor2
    print(valor1, "é maior ou igual a", valor2)
end

-- Menor que (<)
if valor1 < valor2 then
    -- Código a ser executado se valor1 for menor que valor2
    print(valor1, "é menor que", valor2)
end

-- Menor ou igual a (<=)
if valor1 <= valor2 then
    -- Código a ser executado se valor1 for menor ou igual a valor2
    print(valor1, "é menor ou igual a", valor2)
end

-- Igual a (==)
if valor1 == valor2 then
    -- Código a ser executado se valor1 for igual a valor2
    print(valor1, "é igual a", valor2)
end

-- Diferente de (~=)
if valor1 ~= valor2 then
    -- Código a ser executado se valor1 for diferente de valor2
    print(valor1, "é diferente de", valor2)
end

-- Negação (not)
if not valor1 then
    -- Código a ser executado se valor1 for falso (nil ou false)
    print("valor1 é falso ou nil")
end

-- Operadores lógicos AND e OR

-- AND (todas as condições precisam ser verdadeiras)
if valor1 > valor2 and status then
    -- Código a ser executado se valor1 for maior que valor2 E status for verdadeiro
    print("valor1 é maior que valor2 E status é verdadeiro")
end

-- OR (pelo menos uma das condições precisa ser verdadeira)
if valor1 > valor2 or status then
    -- Código a ser executado se valor1 for maior que valor2 OU status for verdadeiro
    print("valor1 é maior que valor2 OU status é verdadeiro")
end

-- Estrutura de repetição WHILE
local contador = 1 -- local, palavra reservada para indicar uma variável de escopo NÃO global
while contador <= 5 do
    print("Contador é: ", contador)
    contador = contador + 1
end
-- O loop while continuará executando enquanto a condição for verdadeira

-- Estrutura de repetição REPEAT-UNTIL
local contadorRepeat = 1
repeat
    print("Contador repeat é: ", contadorRepeat)
    contadorRepeat = contadorRepeat + 1  -- Incrementa o contador
until contadorRepeat > 5
-- O loop repeat executa o código pelo menos uma vez e verifica a condição após a execução do bloco

-- Estrutura de repetição FOR (incremento)
for i=1, 10 do
    print('contadorFor tem valor:', i)
end

-- Estrutura de repetição FOR (decremento)
for i=10, 1, -1 do -- Terceiro parâmetro adicionado para indicar o valor a ser decrementado
    print('contadorFor tem valor:', i)
end

-- Declaração de função
function soma(param1, param2)
    return param1 + param2
end

print(soma(1, 2))
