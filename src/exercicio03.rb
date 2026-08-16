class NoMatricial
  attr_accessor :info, :elo

  def initialize(info, elo)
    @info = info
    @elo = elo
  end
end

lista = Array.new(8)

#A
lista[2] = NoMatricial.new("N", 5)
lista[5] = NoMatricial.new("I", 6)
lista[6] = NoMatricial.new("C", 7)
lista[7] = NoMatricial.new("E", 0)

#B
lista[3] = NoMatricial.new("I", 1)
lista[1] = NoMatricial.new("C", 4)
lista[4] = NoMatricial.new("E", 0)

comeco_a = 2
comeco_b = 3

def existe_na_lista(lista, comeco_b, letra_procurada)
  posicao = comeco_b

  while posicao != 0
    if lista[posicao].info == letra_procurada
      return true
      else
      posicao = lista[posicao].elo
    end
  end

  false
end

def primeiro_exclusivo(lista, comeco_a, comeco_b)
  posicao_a = comeco_a

  while posicao_a != 0
    letra_atual = lista[posicao_a].info

    achou_no_b = existe_na_lista(lista, comeco_b, letra_atual)

    if achou_no_b == false
      return letra_atual
      else
      posicao_a = lista[posicao_a].elo
    end
  end

  "Nenhuma letra exclusiva encontrada."
end

resultado = primeiro_exclusivo(lista, comeco_a, comeco_b)

puts "A primeira letra exclusiva da Lista A é: #{resultado}"