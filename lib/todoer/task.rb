module Todoer
  class Task
    attr_reader :titulo, :id, :descricao

    def initialize(props = {})
      @titulo = props[:titulo]
      @id = props[:id]
      @descricao = props[:descricao]
    end

    def ==(outra_task)
      id == outra_task.id &&
        titulo == outra_task.titulo &&
        descricao == outra_task.descricao
    end
  end
end