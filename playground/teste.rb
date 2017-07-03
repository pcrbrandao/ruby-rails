# isso é um comentário
=begin
isso é um bloco de comentário
=end
class Pessoa
    def initialize(nome)
        @nome = nome
    end

    def muda_nome(novo_nome)
        @nome = novo_nome
    end

    def diz_nome
        puts "meu nome é #{@nome}"
    end
end

p = Pessoa.new("Pedro")
p.diz_nome
puts p.methods