#MAP
bichos = ["gato", "cachorro", "ornitorrinco"]



puts bichos.map { |b| b.upcase }
puts bichos


tasks = [
    {
        titulo: "comprar detergente",
        descricao: "Precisamos para limpar a casa"
    }, 
    {
        titulo: "lavar louça",
        descricao: "Os pratos não se lavarão sozinhos",
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
puts 
mapped = new_tasks.map do |t| 
     #os |t| sao hashs do array original
     #dentro do new tasks vou procurar as tarefas, dentro do hash vou pegar as propriedades
     {
        titulo: t[:titulo].upcase,
        descricao: t[:descricao].downcase
     }
    end
print mapped

