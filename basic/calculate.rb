## Calculadora

def somar(x, y)
	return x	+ y
end

def subtrair(x, y)
	return	x - y
end

def multiplicar(x, y)
	return x * y
end

def dividir(x, y)
	if	y == 0
		return "não é possível dividir por zero"
	end
	return x / y
end

puts "digite o primeiro numero: "
x = gets.chomp.to_i
puts "digite o segundo numero: "
y = gets.chomp.to_i

puts "A soma é: #{somar(x, y)}"
puts "A subtração é: #{subtrair(x, y)}"
puts "A multiplicação é: #{multiplicar(x, y)}"


