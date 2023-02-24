require "./todos"

todos = Todos.new
todos << Task.new("comer", descricao: "pra não morrer")
todos << Task.new("lavar a louça", descricao: "não temos mais pratos limpos", tempo: 15, passo_a_passo: "1 - separar por tipo, 2 - Começar pelos copos, 3 - Passar pelos talheres e pratos, 4 - panelas")
todos << Task.new("comer um lanchinho", descricao: "não podemos pular refeições", tempo: 10)

puts todos[/comer/]
puts todos["comer"]
puts todos
puts todos.inspect

tarefas = Todos.new
tarefas << Task.new("comer", descricao: "pra não morrer")
puts "tarefas: "
puts [tarefas].inspect
puts "Todos"
Todos.store(todos)


tasks = Todos.load   #chamei sem parametro e como ja tinha tasks, imprimiu o array 

p tasks.count
p tasks.take(2)
p tasks.sort_by {|t| t.titulo}


