module Comercio
    class Restaurante
        def initialize(nome)
            puts "criando um novo restaurante: #{nome}"
            @@total ||= 0
            @@total = @@total + 1
            Restaurante.relatorio
            @nome = nome
        end

        def self.relatorio
            puts "Foram criados #{@@total} restaurantes"
        end

    end
end

module Educacao
    class Aluno
        #não sabe nada
    end

    class Professor
        def ensina(aluno)
            def aluno.escreve
                puts "sei escrever!"
            end
        end
    end
end

def teste_restaurante
    rest1 = Comercio::Restaurante.new("Macdonalds")
    rest2 = Comercio::Restaurante.new("Comida Chinesa")
end

def teste_aluno_nao_sabe_escrever
    print "teste aluno não sabe escrever... "
    juca = Educacao::Aluno.new
    if !juca.respond_to? :escreve
        puts "não sei escrever :("
        return
    end
    # se ele escreve o teste não passou
    puts "Sabe escrever?"
    juca.escreve
end

def teste_aluno_sabe_escrever
    print "teste aluno sabe escrever... "
    juca = Educacao::Aluno.new
    professor = Educacao::Professor.new
    professor.ensina juca
    if !juca.respond_to? :escreve
        puts "erro... deveria saber escrever"
        return
    end
    #depois que o professor ensina juca sabe escrever
    juca.escreve
end

teste_aluno_nao_sabe_escrever
teste_aluno_sabe_escrever
teste_restaurante