require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
    def cria_um_restaurante
        Restaurante.destroy_all
        r = Restaurante.new nome: "Fasano", endereco:"End2", especialidade:"Esp2"
        r.save
        return r
    end

    def lista_todos_os_restaurantes
        for r in Restaurante.all
            puts "restaurante: #{r.nome}"
        end
    end

    def test_restaurante_deve_ser_criado
        r = cria_um_restaurante
        r1 = Restaurante.where({nome:"Fasano"})
        lista_todos_os_restaurantes
        nome1 = r.nome
        nome2 = r1.nome
        assert nome1.eql?(nome2), "restaurante #{r.to_s} não é #{r1.to_s}"
    end

    def test_first_deve_retornar_o_primeiro
        Restaurante.destroy_all
        r = cria_um_restaurante
        r1 = Restaurante.first
        nome1 = r.nome
        nome2 = r1.nome
        assert nome1.eql?(nome2), "restaurante #{nome1} não é #{nome2}?"
    end
end
