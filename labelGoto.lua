::init:: -- Labels são usados em Lua como pontos de referência dentro de um código que podem ser "referenciados" pelo comando goto.
print("Digite uma mensagem")
local message = io.read()
print("Mensagem digitada foi: \n"..message)
print("Deseja substituir sua mensagem?")
local resp = io.read()
if resp == "sim" then
    goto init -- A instrução 'goto' faz o programa saltar para o ponto marcado com o rótulo 'init'.
end