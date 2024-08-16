--TRADUTOR BRAILLE - PROGRAMAÇÃO FEITA POR WEVERTON RYAN

function alfb(t) --função que identifica qual é o caracter, e traduz para Braille
  if t == "a" then --verifica qual o valor do caracter
    return "⠁" --retornado a versão traduzida para braille daquele caracter
  elseif t == "b" then
    return "⠃"
  elseif t == "c" then
    return "⠉"
  elseif t == "d" then
    return "⠙"
  elseif t == "e" then
    return "⠑"
  elseif t == "f" then
    return "⠋"
  elseif t == "g" then
    return "⠛"
  elseif t == "h" then
    return "⠓"
  elseif t == "i" then
    return "⠊"
  elseif t == "j" then
    return "⠚"
  elseif t == "k" then
    return "⠅"
  elseif t == "l" then
    return "⠇"
  elseif t == "m" then
    return "⠍"
  elseif t == "n" then
    return "⠝"
  elseif t == "o" then
    return "⠕"
  elseif t == "p" then
    return "⠏"
  elseif t == "q" then
    return "⠟"
  elseif t == "r" then
    return "⠗"
  elseif t == "s" then
    return "⠎"
  elseif t == "t" then
    return "⠞"
  elseif t == "u" then
    return "⠥"
  elseif t == "v" then
    return "⠧"
  elseif t == "w" then
    return "⠺"
  elseif t == "x" then
    return "⠭"
  elseif t == "y" then
    return "⠽"
  elseif t == "z" then
    return "⠵"
  else
    return t --caso não ache o valor correspondente do caracter, apenas retorna para a função o valor que o caracter já tinha
  end
end

function tradutor() --função que tem o papel de levar o texto escrito pelo usuario para ser traduzido
  local trad = "" --variável reponsavel por conter a versão do texto traduzida
  local n = 1 --indicador do caracter a ser traduzido
  local text = io.read():lower() --texto escrito pelo usuario, com diminutivo
  repeat
    local crt = alfb(string.sub(text, n, n))--pega cada caracter individualmente e leva para ser traduzido na função alfb()
    trad = trad .. crt --pega o texto já traduzido e adiciona os novos caracteres traduzidos
    n = n + 1 --contagem para ir para o próximo caracter
  until crt == "" --verifica se ainda existe algum caracter a ser traduzido ou não
  return trad --retorna para a variavel o texto traduzido
end

print(" [[TRADUTOR BRAILLE]] versão Teste\npor Weverton Ryan\n")
while 1 == 1 do --loop para não precisar ficar reiniciando o programa
  print(tradutor())
end

--Bugs a Corrigir (que eu conheço)
-- acentos
-- pontuação
-- números

--Coisas a Implementar
-- de braille para alfabeto (já que ele só traduz para braille, ele não faz o contrário)
-- diminuir e otimizar código