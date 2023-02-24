require "fileutils"  #lib padrao
require "yaml"       # lib de terceiros
require "./task"     #nossos imports
class Todos
    include Enumerable   #fazendo uso de modulo enumerable para poder utilizar o metodo each. os metodos sortby, count e take precisam do each
    attr_reader :all

    
    class << self ##a classe onde eu vou implementar os todos sou eu mesma [todos = self]
        def load
            new YAML.load_file("./storage/data", permitted_classes: [Task])   ##se encontrar uma representação do objeto task, vc ta permitido a construir uma instancia desse objeto. Retorno um array de tasks
        end

        def store(todos)  #salvar os todos em disco
           ## puts todos.all.inspect    - vamos usar file utils
           FileUtils.mkdir("./storage") if !File.directory?("./storage")
           File.open("./storage/data", "w+") do |f|
            f.write(todos.all.to_yaml)  ##criamos um arquivo e salvamos as tasks nele. Substituimos o to inspect para yaml
           end
        end
    end  #isso é chamado abertura de classe para colocar mais métodos dentro


    def initialize(all_tasks = nil)   #posso iniciar um todo ja com tarefas ou iniciar do zero 
        @all = all_tasks || []    # a primeira instrução é um array vazio caso o construtor nao tenha parametro
    end

    def << (task)
        @all << task
    end

    def [] (search)
    search =  Regexp.new(search) if search.is_a?(String)
    all.select { |t| t.titulo =~ search }    
    end

    def each(&block)
        all.each(&block)
    end
    # Se eu tiver o metodo each nao preciso implementar esses de baixo, fica mais simples e menos verboso
    # def count      
    #    @all.count 
    # end 
    # def take(n)
    #     @all.take(n)
    # end 
    
    # def sort_by (&block)  # o & indica q essa variavel vai ser ref para o bloco q foi passado para o metodo no momento da invocação 
    #     @all.sort_by(&block)
    # end    
end

