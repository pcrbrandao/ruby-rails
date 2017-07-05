def teste_divide_por_cem
    print "Digite um número: "
    numero = gets.to_i
    # começa o teste
    begin
        resultado = 100.0 / numero
    rescue
        puts "Número digitado inválido!"
        exit
    end
    # tudo certo? então imprime
    puts "100/#{numero} é #{resultado}"
end

class IdadeException < Exception
end

def verifica_idade(idade)
    unless idade > 18
        raise IdadeException,
        "Voce precisa ser maior de idade para " \
        "jogar jogos violentos"
    end
    # tudo certo?
    puts "Bem-vindo ao jogo!"
end

def teste_verifica_idade
    print "teste idade 17... "
    begin
        verifica_idade(17)
    rescue IdadeException => e
        puts "Uma excessão aqui: #{e}"
    end
end

def teste_verifica_idade_passa
    print "teste idade 20... "
    verifica_idade(20)
end

def pesquisa(nome)
    if nome.size < 10
        throw :nome_invalido, "Nome deve ter mais de 10 digitos"
    end
    #certo, retorna nome
    "nome: #{nome}"
end

def faz_pesquisa(nome)
    catch :nome_invalido do
        cliente = pesquisa(nome)
        return cliente
    end
end

def teste_faz_pesquisa_ana
    print "pesquisa ana... "
    puts faz_pesquisa("Ana")
end

def teste_faz_pesquisa_pedro
    print "pesquisa Pedro César... "
    puts faz_pesquisa("Pedro César")
end

teste_faz_pesquisa_ana
teste_faz_pesquisa_pedro
teste_divide_por_cem
teste_verifica_idade
teste_verifica_idade_passa