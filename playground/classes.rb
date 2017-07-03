class Franquia

    def initialize
        @restaurantes = []
    end

    def adiciona(*restaurantes)
        for restaurante in restaurantes
            @restaurantes << restaurante
        end
    end

    def mostra
        for restaurante in @restaurantes
            puts restaurante.nome
        end
    end
end

class Restaurante
    attr_accessor :nome
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de chão"

franquia = Franquia.new
franquia.adiciona restaurante_um, restaurante_dois

franquia.mostra