# atividade
#Expressão Regular

puts "hello world" =~ /hello/

puts "hello" =~ /e/

puts "hello" =~ /l/
puts "hello" =~ /l/


puts "hello world" =~ /o{+}/


#aqui, procuramos correspondencias na string e ele devolve a posicao [se houver mais de uma correspondencia, so considera a primeira]

if  "hello world" =~ /hello/
puts "sim"
else puts "nao"
end 

if  "hello world" =~ /n/
    puts "sim"
    else puts "nao"
end 


regex = /[A-Z]/
def meu_metodo(palavra, regex)

end
    
