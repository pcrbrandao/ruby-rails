class Turma
    def initialize(*alunos)
        @alunos = []
        for aluno in alunos
            @alunos << aluno
        end
    end

    def each
        if block_given?
            @alunos.each do |nome|
                yield nome
            end
            return
        end
        puts "Não foi passado o bloco..."
    end
end

def teste_turma_each
    turma = Turma.new("Guilherme", "Paulo", "Sérgio")
    turma.each do |nome|
        puts nome
    end
end

teste_turma_each
