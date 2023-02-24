require "./task"
class Todos
    attr_reader :all

    def initialize
        @all = []
    end

    def <<(task)
        @all << task
    end
end

