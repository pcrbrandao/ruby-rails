module Comentavel
    def comentarios
        @comentarios ||= []
    end

    def recebe_comentario(comentario)
        self.comentarios << comentario
    end
end

class Revista
    include Comentavel
end

def teste_mixins
    print "teste mixins... "
    revista = Revista.new
    revista.recebe_comentario("muito ruim!")
    puts revista.comentarios
end

teste_mixins