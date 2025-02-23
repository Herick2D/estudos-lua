valor = 10 -- Variável global (equivalente ao var do JavaScript).

do -- Início do escopo
    local valor = 20 -- Variável se encontra dentro do bloco do/end e não afeta a variável global (equivalente ao let do JavaScript).
    local novoValor = 10 -- Variável local ao bloco do/end.
    print(novoValor) -- 10 (print consegue acessar a variável local ao bloco do/end).
end -- Fim do escopo

print(valor) -- 10
---@diagnostic disable-next-line: undefined-global
print(novoValor) -- nil (print nao consegue acessar a variável local ao bloco do/end)