texto = "hello world"
text = "stellaFCorreia"

def upcase(t)
   print t.upcase   #o () após o metodo é opcional = upcase()
end

upcase(texto)

puts texto


def up(n)
    puts  n.upcase!  ##dessa forma, o upcase! altera variável de forma global. depois de declarar e chamar, a variavel text vai ficar em caixa alta, mesmo q n chame mais a função. 
end



up(text)
puts text

def low(n)
    puts n.downcase
end

low(text)
puts text


def lowG(n)
    puts n.downcase!
end
lowG(text)
puts text

#upcase - altera a variavel localmente, so quando chama a função e dentro da função. mesma coisa pro downcase
#upcase! - altera a variavel de forma global após a função ser chamada. entao depois de chamada a função, a variavel sempre será maiuscula. Mesma coisa pro downcase!
