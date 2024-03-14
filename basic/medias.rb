def proventos(salario, ferias, terco, decimo_13)
    salario + ferias + terco + decimo_13
end


def media(salario, ferias)
  terco = salario / 3
  decimo = salario
	proventos = proventos(salario, ferias, terco, decimo)
  proventos / 12
end

puts "Digite o salario: "
salario = gets.chomp.to_f
puts "Digite o valor das ferias: "
ferias = gets.chomp.to_f
salario = salario*12
terco = salario / 3
decimo = salario

puts "Seu salário anual é: #{proventos(salario, ferias, terco, decimo)}"
puts "A média dos proventos é: #{media(salario, ferias)}"