class Task
    attr_accessor :titulo, :descricao, :passo_a_passo, :tempo, :situacao

    def initialize(titulo, info = {})
        @titulo = titulo
        @descricao = info[:descricao]
        @tempo = info[:tempo]
        @passo_a_passo = info[:passo_a_passo]
        @situacao = info.fetch(:situacao, "pendente" )
    end
end

