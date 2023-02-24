require "./classPessoa"

#Mixim: implementar um metodo e incluir na classe. tb posso criar um arquivo com o modulo e passa
module Logica
    def compra(item:, quantidade:)
        if item.downcase == "pão"
            item = "leite"
            quantidade = 4
        end
        puts "comprando #{quantidade} #{item}"
    end
end
class Programista < Pessoa
    include Logica
    def initialize(extras = {})
        
        @nome = extras.fetch(:nome, "Stella")
        @sobrenome = extras.fetch(:sobrenome, "Programista")  ## criando um sobrenome padrão caso o usuario n insira
        @language  = extras.fetch(:language, "Ruby")

        super(nome, sobrenome)

    end

    def code (assunto)
        assunto
        puts "Função gerada pela programista #{nome} #{sobrenome}: #{@language}"
        puts "\ndef eita"
        puts "  puts \"#{assunto}\""
        puts "end"
    end

    def inspect
        "A aula de hoje abordará funções e a #{@code}"
    end
end
class << matz
    def cria_ruby
        puts "# so o matz mesmo"
end
programista = Programista.new()

p programista
programista.code
puts 

programista.inspect


puts "dev"

dev = Programista.new()
dev.code
dev.pensa if dev.existe?

dev.compra(item: "leite", quantidade: 1)
dev.compra(item: "pão", quantidade: 4)

p dev