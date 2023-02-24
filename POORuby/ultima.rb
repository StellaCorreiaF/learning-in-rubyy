class Ultima
    class << self
        def meu_attr(name)
            name = name.to_s
            define_method "#{name}" do 
                instance_variable_get("@#{name}")
            end
            define_method "#{name}=" do |value|   
                instance_variable_set("@#{name}", value)
            end
        end
        def hello_classe  ## criando um metodo de classe para ser acessado na classe
            puts "hello na classe"
        end
    end
    def hello_instancia
        ##  hello_classe ## dessa forma, retornará erro pois n existe metodo hello classe dentro do escopo
         p self
        puts "hello na instancia"     
    end
  self.hello_classe    ## invocando metodo durante a declaração de uma classe
  p self
  meu_attr :lol  #chamando um metodo num obj.

end



teste = Ultima.new
teste.hello_instancia
teste.lol = "hello"
puts teste.lol



## Ultima.hello_classe


##Define method é um metodo de classe q me permite criar metodos de instancia, por isso eu consigo chamar ele pela instancia da classe

puts "class novo"
class Novo
    #self singleton clas
    class << self
        def meus_gs(name)
            define_method name.to_s do 
                instance_variable_get(name.to_s)
            end
            define_method "#{name.to_s}=" do |value|
                instance_variable_set(name.to_s, value)
            end
                
        end
    end
    meus_gs :ss


    define_method :bye do 
        puts "bye"
    end

    def hello
        puts "hello"
    end

end
novo = Novo.new
novo.hello
novo.bye
novo.ss


### derivar reader e writer 


