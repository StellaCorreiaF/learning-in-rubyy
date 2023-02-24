
tasks = [
    {
        titulo: "comprar detergente",
        descricao: "precisamos para limpar a casa",
        tempo: 1
    }, 
    {
        titulo: "comprar esponja",
        descricao: "precisamos para lavar a louça",
        tempo: 0.5
    }, 
    {
        titulo: "lavar louça",
        descricao: "os pratos não se lavarão sozinhos",
        passos: "1 - organizar, 2 - ensaboar, 3 - enxaguar",
        tempo: 1
    },
    {
        titulo: "varrer a calçada",
        descricao: "os vizinhos vão te achar limpo",
        tempo: 2
    },
    {
        titulo: "Lavar o banheiro",
        descricao: "precisa, né?",
        tempo: 3
    }
]
puts tasks

#Select retorna um novo array. é como o filter em java
# o map gera uma iteração e gera 1 nova lista

tarefas_com_tempo = tasks.
select { |t| t[:titulo] =~/comprar/ }
.map { |t| t.merge(
    {titulo: t[:titulo].upcase, descricao: t[:descricao].downcase

    }
)}
puts "tarefas com tempo: "
puts
puts tarefas_com_tempo

#Reduce

#Quantas horas vou demorar fazendo todas as tarefas que tem comprar no titulo?
#Dentro do reduce, eu preciso passar um acumulador e a tarefa atual, e o acumulador foi somar o tempo das tarefas
# antes do hash, preciso passar um contador inicial (), nesse caso, 0
puts puts

soma_do_tempo = tasks
.select { |t| t[:titulo] =~/comprar/ }
.map { |t| t.merge(
    titulo: t[:titulo].upcase )}
.reduce(0) {|acc, t| acc + t[:tempo]}
puts "soma do tempo"
puts
puts soma_do_tempo


