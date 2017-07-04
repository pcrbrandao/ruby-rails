def teste_lista1
    nomes = []
    nomes[0] = "Fasano"
    nomes << "Fogo de chão"

    for nome in nomes
        puts nome
    end
end

def teste_lista2 
    cursos = [
        {ruby: 'rr-71', java: 'fj-11'},
        {ruby: 'rr-75', java: 'fj-21'}
    ]

    cursos.sort_by { |curso| curso[:ruby] }.each do |curso|
        puts "Curso de RoR: #{ curso[:ruby] }"
    end

    cursos.sort_by { |curso| curso[:ruby] }.each do |curso|
        next if curso[:ruby] == 'rr-75'
        puts "Curso de RoR: #{ curso[:ruby] }"
    end
end

teste_lista2