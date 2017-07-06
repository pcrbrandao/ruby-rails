require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
    def cria_um_restaurante
        Restaurante.destroy_all
        r = Restaurante.new 
        r.nome = "Fasano"
        r.endereco = "End2"
        r.especialidade = "Esp2"
        r.save
        return r
    end

    def test_restaurante_deve_ser_criado
        r = cria_um_restaurante
        r1 = Restaurante.find_by nome:'Fasano'
        if r1.respond_to? :nome
            assert r1.nome.eql?("Fasano"), "restaurante #{r.nome} não é #{r1.nome}"
            return
        end
        assert false, "r1 não tem nome?"
    end

    def test_first_deve_retornar_o_primeiro
        r = cria_um_restaurante
        r1 = Restaurante.first
        nome1 = r.nome
        nome2 = r1.nome
        assert nome1.eql?(nome2), "restaurante #{nome1} não é #{nome2}?"
    end
end
