tasks = [
    {
        titulo: "comprar detergente ",
        descricao: "precisamos para limpar a casa"
    }, 
    {
        titulo: "lavar louça ",
        descricao: "os pratos não se lavarão sozinhos",
        passos: "1 - organizar, 2 - ensaboar, 3 - enxaguar"
    }    
]

=begin 

=end
puts tasks[1]
puts
puts " imprimindo so os titulos "
puts 
tasks.each do |t|
   print t[:titulo]
end
  






