local tabela = {} -- sintaxe de tabela
tabela[0] = 'Estudos Herick'
tabela[1] = 1993
tabela[2] = true
tabela["X"] = 'https://www.linkedin.com/in/herick-moreira/' -- Tabelas possuem esquema chave/valor, não sendo necessariamente sua chave uma posição.
tabela[3] = nil -- Como o espaço foi definido como nil, o garbage collector remove a key da tabela.


print(tabela)
print(tabela[0])
print(tabela[1])
print(tabela[2])
print(tabela["X"]) -- diferente de arrays, eu posso passar diretamente a key para acessar o valor registrado na tabela
print(tabela[3])
print(tabela[4]) -- O resultado é o mesmo para a key 3 e 4, já que a key 3 foi declarada como nil e a key 4 nunca foi declarada.

print('----------------------------------')

local valores = {01, 07, 08, 11, 22, 93} -- tabela declarada sem definição de keys

-- Quando não declarado uma key, o Lua organiza a tabela como um array,
-- porém diferente de todas as outras linguagens ele começa no 1 ao invés do 0

print(valores[1]) -- 01
print(valores[2]) -- 07
print(valores[3]) -- 08
print(valores[4]) -- 11
print(valores[5]) -- 22
print(valores[6]) -- 93

print('----------------------------------')

-- Função criada apenas para ver a apresentação dos dados em terminal
local function printTabela(tabela)
    for chave, valor in pairs(tabela) do
        if type(valor) == "table" then
            print(chave .. ":")
            printTabela(valor)
        else
            print(chave .. " = " .. tostring(valor))
        end
    end
end

local personagem

personagem = {
    nome = 'Kal Dro\'s',
    jogador = 'Herick',
    raca = 'Draconato',
    classe = 'Clérigo',
    itens = {
        mochila = {
            'Antidote Potion',
            'Copper Key',
            goldenCoin = 13,
            'Cup',
            'Inkwell',
            'Machete',
            'Scroll',
            'Pick',
            'Rope',
            SmallRuby = 2,
            'Torch'
        },
        'spike mace',
        'holy symbol',
        'brunea',
        'soldier helmet'
    }
}

printTabela(personagem)
print(personagem.nome)
printTabela(personagem.itens.mochila)
print(personagem.itens.mochila.goldenCoin) -- acessando diversas camadas de tabelas
printTabela(personagem.itens)

print('----------------------------------')

local numeros = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

-- Estrutura de for para percorrer tabelas
for i = 1 , #numeros do
    print(numeros[i]);
end

-- iterando sobre tabelas
local dias = {"Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado"}

for i = 1, #dias do
    print(dias[i])
end

-- interando sobre chave(key) valor(value) de uma tabela
for key, value in pairs(dias) do
    print(key.. " - "..value)
end