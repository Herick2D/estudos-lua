for i = 1, 10 do -- for tradicional (terceiro paramêtro opcional)
    print(i)
end

print("\n")

for i = 0, 10, 2 do -- incremento 2 em 2
    print(i)
end

print("\n")

for i = 10, 1, -1 do -- decremento
    print(i)
end

--[[
-- for recebe três argumentos,
primeiro valor do i,
segundo o range de atuação
e o terceiro é um parâmetro opcional,
aonde você define como será incrementado ou decrementado tendo o 1 como valor default.
]]