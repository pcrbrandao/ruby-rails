class Receita < ApplicationRecord
    validates_presence_of :conteudo, message: "- deve ser preenchido"
end
