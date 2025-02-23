-- iterando sobre strings
local nome = "Herick"

for character in string.gmatch(nome, ".") do
    print (character)
end

--[[
string.gmatch:
--------------------------
A função string.gmatch é usada para iterar sobre uma string de acordo com um padrão (pattern) que você especificar. 
Ela retorna um iterador que você pode usar em um laço for para acessar cada item que corresponde ao padrão.

A sintaxe básica é:
    string.gmatch(string, pattern)

O que são Patterns (Padrões)?
------------------------------
Em Lua, um padrão (pattern) é uma forma de especificar o tipo de caractere que você deseja buscar ou processar em uma string.
Você pode usar padrões para encontrar letras, números, espaços, ou até caracteres especiais de controle.

- `.`    → Corresponde a **qualquer caractere**.
- `%a`   → Corresponde a **todas as letras** (tanto maiúsculas quanto minúsculas).
- `%c`   → Corresponde a **caracteres de controle** (como tabulação e quebras de linha).
- `%d`   → Corresponde a **dígitos numéricos** (0-9).
- `%l`   → Corresponde a **letras minúsculas**.
- `%p`   → Corresponde a **caracteres de pontuação** (como `.`, `!`, `?`).
- `%s`   → Corresponde a **espaços em branco** (incluindo espaços, tabulações e quebras de linha).
- `%u`   → Corresponde a **letras maiúsculas**.
- `%w`   → Corresponde a **caracteres alfanuméricos** (letras e números).
- `%x`   → Corresponde a **dígitos hexadecimais** (0-9, a-f).
- `%z`   → Corresponde ao **caractere nulo** (representado por 0).

https://www.lua.org/pil/20.2.html
]]