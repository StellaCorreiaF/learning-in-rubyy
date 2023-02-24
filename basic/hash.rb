pessoa = {
    "nome" => "Stella", "sobrenome" => "Oliviera", "idade" => 28
}

puts pessoa
#nome da propriedade = sempre string. ex: nome -> "nome " ou :nome. 

pessoa2 = {
    :nome => "Stella", :sobrenome => "Oliviera", :idade => 28
}



puts pessoa2
# a fat arrow define o valor: => e depois o valor, vai dependender do tipo de dado. 

#acessando propriedades do objeto:
pessoa2[:nome]


#tb podemos fazer como a estrutura do json, porém a mais comum no ruby é com fat arrow  => 

pessoa3 = {
    nome: "Stella"
}
puts "pessoa 3"
puts pessoa3[:nome]

