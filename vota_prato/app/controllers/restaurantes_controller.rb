class RestaurantesController < ApplicationController
    def index
        # render "index"
        @restaurantes = Restaurante.order :id
        # somente durante a faze de testes
        if @restaurantes.empty?
            especialidades = %w{massas japonês vegetariano}
            50.times do |i|
                Restaurante.create!(
                    nome: "Restaurante #{i}",
                    endereco: "Rua #{i} de setembro",
                    especialidade: especialidades.sample
                )
            end
        end
    end

    def show
        @restaurante = Restaurante.find(params[:id])
    end

    def destroy
        @restaurante = Restaurante.find(params[:id])
        @restaurante.destroy

        redirect_to(action: "index")
    end
end
