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

    def new
        @restaurante = Restaurante.new
    end

    def restaurante_params
        params.require(:restaurante).permit(:nome, :endereco, :especialidade)
    end

    def create
        @restaurante = Restaurante.new(restaurante_params)
        @restaurante.save
        redirect_to(action: "index")
    end

    def edit
        @restaurante = Restaurante.find params[:id]
    end

    def update
        @restaurante = Restaurante.find(params[:id])
        @restaurante.update_attributes(restaurante_params)

        redirect_to action: "index"
    end
end
