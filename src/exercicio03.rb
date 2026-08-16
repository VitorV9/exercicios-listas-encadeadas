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
lista[3] = NoMatricial.new("T", 1)
lista[1] = NoMatricial.new("R", 4)
lista[4] = NoMatricial.new("Y", 0)

comeco = 2

def existe_na_lista(lista, comeco, letra_procurada)
  posicao = comeco

  while posicao != 0
    if lista[posicao].info == letra_procurada
      return true

      else
      posicao = lista[posicao].elo
    end
  end

  false
end