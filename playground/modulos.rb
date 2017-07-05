module Animais
    class Animal
        def come
            "comendo"
        end
    end

    class Pato < Animal
        def quack
            "Quack"
        end
    end

    class PatoEstranho < Pato
        def quack
            "Queck!"
        end
    end

    class CriadorDePatos
        def castiga(pato)
            puts pato.quack
        end
    end 
end

module Comercio
    class Franquia
        def info
            puts "Restaurante faz parte da franquia"
        end
    end

    class Restaurante < Franquia
        def info
            super
            puts "Restaurante Fasano"
        end
    end
end

def teste_heranca_super
    restaurante = Comercio::Restaurante.new
    restaurante.info
end

def teste_polimorfismo
    puts "teste de polimorfismo... "
    pato1 = Animais::Pato.new
    pato2 = Animais::PatoEstranho.new
    c = Animais::CriadorDePatos.new
    c.castiga pato1
    c.castiga pato2
end

def teste_heranca
    print "teste de herança... "
    pato = Animais::Pato.new
    puts pato.come
end

teste_heranca
teste_polimorfismo
teste_heranca_super
