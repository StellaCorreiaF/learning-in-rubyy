class Task 
       
    def filtrar(t)
       t.select { |t| t[:titulo] =~/comprar/ }
        .map { |t| t.merge(
            {titulo: t[:titulo].upcase, descricao: t[:descricao].downcase

            }
        )}
    end

           
    def somarTempo(t)
        t.select { |t| t[:titulo] =~/comprar/ }
        .map { |t| t.merge(
        titulo: t[:titulo].upcase )}
    .reduce(0) {|acc, t| acc + t[:tempo]}
    end
    

    def adicionarTask(t)
        t << []
    end


    
end
tasks = Task.new()
tasksToDo = [
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
    }]



p tasks.filtrar(tasksToDo)

p tasks.somarTempo(tasksToDo)
  
