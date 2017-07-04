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
        # for restaurante in @restaurantes
        #    puts restaurante.nome
        # end
        @restaurantes.each do |r|
            puts r.nome
        end
    end
    
    def relario
        if block_given?
            @restaurantes.each do |r|
                yield r
            end
            return
        end
        puts "não sei o que fazer!"
    end
end

class Restaurante
    attr_accessor :nome

    def fechar_conta(dados)
        puts "Conta fechada no valor de #{dados[:valor]}" \
        " e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
    end
end

def teste_restaurante_fecha_conta
    restaurante_um = Restaurante.new
    restaurante_um.nome = "Fasano"

    restaurante_dois = Restaurante.new
    restaurante_dois.nome = "Fogo de chão"

    franquia = Franquia.new
    franquia.adiciona restaurante_um, restaurante_dois

    franquia.mostra
    restaurante_um.fechar_conta valor:50, nota:9, comentario:'Gostei!'

    franquia.relario do |r|
        puts "Restaurante cadastrado: #{r.nome}"
    end
end

teste_restaurante_fecha_conta
