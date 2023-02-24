
tarefas = ["lavar a louçca", "comprar detergente"]

bichos = []

#add

bichos << "gato"
puts bichos

bichos << "cachorro"

puts bichos
print bichos

tasks = [
    {
        titulo: "comprar detergente",
        descricao: "precisamos para limpar a casa"
    }, 
    {
        titulo: "lavar louça",
        descricao: "os pratos não se lavarão sozinhos",
        passos: "1 - organizar, 2 - ensaboar, 3 - enxaguar"
    }    
]

new_tasks =[]

# Selecionando tarefas que contenham "comprar" no titulo para adicionar ao novo vetor
tasks.each do |t|
    if t[:titulo] =~/comprar/
        new_tasks<< t  # ou new_tasks.push(t)
    end
end
print new_tasks; 

#ou podemos fazer assim, criar a variavel e ja atribuir através do select
new_tasks1 = tasks.select do |t|
    t[:titulo] =~ /lavar/
end
puts "new tasks 1: "
puts 
puts new_tasks1