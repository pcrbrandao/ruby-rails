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

class Franquia
    def info
        puts "Restaurante faz parte da franquia"
    end
end

def teste_polimorfismo
    puts "teste de polimorfismo... "
    pato1 = Pato.new
    pato2 = PatoEstranho.new
    c = CriadorDePatos.new
    c.castiga pato1
    c.castiga pato2
end

def teste_heranca
    print "teste de herança... "
    pato = Pato.new
    puts pato.come
end

teste_heranca
teste_polimorfismo