require "./bichos"


module Pensante
    def pensa 
        puts "logo existe"
    end
    def existe?
        true
    end
end

module Motorista
    def dirige
        puts "vrum vrum"
    end
    def cnhm
        [1,2,3,4].sample
    end
end


class Pessoa
    include Pensante
    include Bichos
    attr_accessor :nome
    attr_reader :sobrenome

    def initialize(nome, sobrenome)
        @nome = nome
        @sobrenome = sobrenome
    end

    def hello
        puts "sou #{nome} #{sobrenome}"
    end

    def to_s
        "pessoa chamada #{@nome} #{@sobrenome}"
    end

    def inspect
        "Nome completo da pessoa: #{@nome_completo}"
    end
    #private  (se descomentar da)
    def nome_completo
        "#{@nome} #{@sobrenome}"
    end
    def mima(bicho)
        return if !bicho.respond_to?(:diz)
        bicho.diz
    end
end
stella = Pessoa.new("Stella", "Oliveira")

p stella  


puts stella

print stella.inspect


print stella.to_s


puts stella.nome_completo

stella.pensa if stella.existe?

garfield = Bichos::Gato.new
garfield.diz

pudim = Bichos::Cachorro.new
pudim.diz

stella.mima(pudim)
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
    def initialize(nome, extras = {})        
        sobrenome = extras.fetch(:sobrenome, "Programista")  ## criando um sobrenome padrão caso o usuario n insira
        @language  = extras.fetch(:language, "Ruby")

        super(nome, sobrenome)

    end

    def code (assunto)        
        puts "Função gerada pela programista #{nome} #{sobrenome} #{@language}"
        puts "\ndef eita"
        puts "  puts \"#{assunto}\""
        puts "end"
    end

    def inspect
        "A aula de hoje abordará funções e a #{@code}"
    end
end


programista = Programista.new("Stella", language: "Ruby")
programista.code("rails")

p programista
p programista.inspect



puts "dev"

dev = Programista.new("Stella")
dev.code("hello word")
dev.pensa if dev.existe?



dev.compra(item: "leite", quantidade: 1)
dev.compra(item: "pão", quantidade: 4)
Programista.ancestors


matz = Programista.new("Matz")
class << matz
    def cria_ruby
        puts "# so o matz mesmo"
        code "ruby"
    end
end
matz.cria_ruby

class Autoescola
    def ensina(pessoa)
        class << pessoa
            include Motorista
        end
    end
end



class FaltaDeSenso
    def ensina(pessoa)
        class << pessoa
            define_method :randandan do
                puts "raaaaaaan dan dan dan "

            end
        end
    end
end

da_esquina = Autoescola.new
sueli = Pessoa.new("Sueli", "Correia")

da_esquina.ensina(sueli)
sueli.dirige
falta_senso = FaltaDeSenso.new

puts sueli.respond_to?(:dirige)
puts sueli.respond_to?(:randandan)

falta_senso.ensina(sueli)

sueli.randandan

