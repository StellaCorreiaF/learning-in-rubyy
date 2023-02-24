tasks = ["lavar a louça", "comprar detergente"]

puts " \nfunção para inverter a ordem"

def order(t)
     t.reverse
end
order(tasks)

puts "\nFOR:"
for t in tasks do 
    puts t
end

puts "\nFuncao Iter: Iterar as taks, pego o retorno de chamar order e passo para iteração, ou seja, percorro o vetor, faço o for e ja itero e altera a ordem"
def iter(tasks)
    for t in tasks do 
        puts tasks
    end
end

iter(order(tasks))
puts "\nAction"

#metodo iter recebe uma lista [tasks] e uma ação [ q é uma função]
def iter(tasks, action)
    #estou iterando cada elemento da minha coleção de dados e para cada elemento chamar [.call] uma ação
    for t in tasks do 
       ## action t, vai dar erro, pois nao especificamos que ação
       action.call t
    end
end

def printer(t)
    puts t 
end
iter(order(tasks), method("printer"))  #estou passando a funcao como parametro no metodo iter. No caso o action é a funcao printer, que deve ser massado como method(nome da funcao q é printer)

puts "\nFunção anonima: "

#funções anonimas ou lambda
-> (t) { puts t }   # a partir daqui "->" eu vou definir uma função "{ faça isso}"

#como invocar essa funcao : chamar o metodo call => .call 
-> (t) { puts t }.call("hello world")  

#mudando e chamando funcao anonima, coisa rapida, n precisa ser reaproveitado, para deixar menos verboso
puts "substituindo o metodo printer"
iter(order(tasks), ->(t) {puts t}) 

#Blocos em Ruby: Capacidade de passar função anonima de forma nativa dentro da linguagem. Para isso precisamos informar a funcao que o bloco será chamado, ao inves de uma ação de funcao anonima ou metodo. Adicionamos o &
puts "\nBlocos em ruby: "

def iterando(tasks, &action)
    for t in tasks do 
       ## action t, vai dar erro, pois nao especificamos que ação
      action.call t
    end
end

iterando(order(tasks)) { |t| puts t}
  # depois da invocação, passo a funcao anominma

puts "\noutra maneira de receber função anonima: forma nativa => yield"
# nao precisamos nomear o bloco, podemos simplesmente executar a função anonima, sem passar outro parametro alem da tarefa

def iter2(tasks)
    for t in tasks do 
        yield t   
    end
end

iter2(order(tasks)) {|t| puts t}

#Each: para cada elemento dessa função [ funcao(parametro).each], execute este codigo {|p| puts p } - mais facil ainda 
puts "\nEach => mais fácil, menos verboso: "

order(tasks).each {|t| puts t}