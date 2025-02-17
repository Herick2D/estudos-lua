--[[
soma +
subtração -
multiplicação *
divisão /
resto da divisão %
potenciação ^
]]

-- exemplo soma
print(11 + 11) -- 22

-- exemplo subtração
print(11 - 11) -- 0

-- exemplo multiplicação
print(11 * 11) -- 121

-- exemplo divisão
print(11 / 11) -- 1

-- exemplo resto da divisão
print(11 % 11) -- 0
print(11 % 10) -- 1

-- exemplo potenciação
print(11 ^ 4) -- 14641

--[[
Operadores relacionais
igual ==
diferente ~=
maior >
menor <
maior ou igual >=
menor ou igual <=
]]

-- exemplo igual
print(11 == 11) -- true
print(11 == 10) -- false

-- exemplo diferente
print(11 ~= 11) -- false
print(11 ~= 10) -- true

-- exemplo maior
print(11 > 11) -- false
print(11 > 10) -- true

-- exemplo menor
print(11 < 11) -- false
print(11 < 10) -- false

-- exemplo maior ou igual
print(11 >= 11) -- true
print(11 >= 10) -- true
print(11 >= 12) -- false

-- exemplo menor ou igual
print(11 <= 11) -- true 
print(11 <= 10) -- false
print(11 <= 12) -- true

--[[
Lógicos em Lua: OR e AND

1. OR (ou lógico)
- Retorna o primeiro valor que for verdadeiro (não nulo ou falso).
- Se nenhum valor for verdadeiro, retorna o último valor avaliado.

2. AND (e lógico)
- Retorna o primeiro valor que for falso (nil ou false).
- Se todos os valores forem verdadeiros, retorna o último valor avaliado.
]]

-- Exemplo OR
print(true or false)   -- true (o primeiro valor verdadeiro é retornado)
print(false or true)   -- true (o primeiro valor verdadeiro é retornado)
print(nil or 10)       -- 10 (nil é falso, então retorna o próximo valor)
print(0 or "Lua")      -- 0 (Lua considera 0 como verdadeiro)
print(false or nil)    -- nil (nenhum valor verdadeiro, então retorna o último)

-- Exemplo AND
print(true and false)  -- false (o primeiro valor falso é retornado)
print(10 and 20)       -- 20 (ambos são verdadeiros, retorna o último)
print(nil and 100)     -- nil (nil é falso, retorna ele imediatamente)
print(0 and "Lua")     -- "Lua" (0 é verdadeiro, então retorna o segundo valor)
print(5 > 2 and 8 > 3) -- true (ambas as condições são verdadeiras)


--[[
Precedência de operadores
1. ()
2. ^
3. not, - (unário)
4. *, /, %
5. +, -
6. .. (concatenação)
7. <, >, <=, >=, ==, ~=
8 and
9. or
]]