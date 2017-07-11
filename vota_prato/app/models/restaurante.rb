class Restaurante < ApplicationRecord
    validates :nome, presence: true, uniqueness: true, length: {maximum: 50}
    validates :endereco, presence: true, uniqueness: true, length: {maximum: 100}
    validate :primeira_letra_deve_ser_maiuscula

    private
    def primeira_letra_deve_ser_maiuscula
        errors.add(:nome,
            "primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
    end

    has_many :qualificacoes
    has_and_belongs_to_many :pratos
    has_many :comentarios, as: :comentavel
end
