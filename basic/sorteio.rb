def adicionar_participante(participantes)
  print "Digite o nome do participante: "
  nome = gets.chomp
  participantes << nome
end

def realizar_sorteio(participantes)
  vencedor = participantes.sample
  return vencedor
end

participantes = []

10.times do
  adicionar_participante(participantes)
end

vencedor = realizar_sorteio(participantes)
puts "O vencedor do sorteio é: #{vencedor}"
