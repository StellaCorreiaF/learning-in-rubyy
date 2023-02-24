class Task
    attr_accessor :titulo, :descricao, :passo_a_passo, :tempo, :situacao

    def initialize(titulo, info = {})
        @titulo = titulo
        @descricao = info[:descricao]
        @tempo = info.fetch(:tempo, 10)
        @passo_a_passo = info[:passo_a_passo]
        @situacao = info.fetch(:situacao, "pendente" )
    end
   
    def to_h
        {titulo: titulo, descricao: descricao, tempo: tempo}
    end
    def inspect
        to_h.inspect
        
    end
end

