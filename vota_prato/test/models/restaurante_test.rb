require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
    test "O restaurante deve ser criado" do
        r = Restaurante.new nome: "Fasano", endereco:"End2", especialidade:"Esp2"
        r.save
        r1 = Restaurante.first
        assert !r.eql?(r1), "Restaurante não foi criado"
    end
end
