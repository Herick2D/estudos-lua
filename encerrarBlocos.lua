-- Uso do break para encerrar blocos de código
local index = 1

while index < 100 do
    print(index)
    if index >= 10 then
        break -- o break faz com que o bloco se encerre antes da condição do while, o return teria o mesmo resultado.
    end
    index = index + 1
end