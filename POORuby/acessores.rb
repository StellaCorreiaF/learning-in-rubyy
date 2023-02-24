class Pessoa
    attr_reader :nome, :sobrenome  #getter
    attr_writer :nome, :sobrenome  #setter
  
  def initialize(nome, sobrenome)  
    @nome = nome  
    @sobrenome = sobrenome  
  end  
end


pessoa = Pessoa.new("Stella", "Oliveira")
#Getter
p pessoa.nome  
p pessoa.sobrenome

#setter
pessoa.nome = "Cris"
pessoa.sobrenome = "Guimarães"

p pessoa 