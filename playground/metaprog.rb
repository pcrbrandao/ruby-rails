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

def teste_restaurante
    rest1 = Restaurante.new("Macdonalds")
    rest2 = Restaurante.new("Comida Chinesa")
end

teste_restaurante