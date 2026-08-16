class NoMatricial
  attr_accessor :info, :elo

  def initialize(info, elo)
    @info = info
    @elo = elo
  end
end

lista = Array.new(9)

lista[2] = NoMatricial.new("G", 5)
lista[5] = NoMatricial.new("O", 7)
lista[7] = NoMatricial.new("O", 8)
lista[8] = NoMatricial.new("D", 0)

lista[3] = NoMatricial.new("G", 1)
lista[1] = NoMatricial.new("A", 4)
lista[4] = NoMatricial.new("M", 6)
lista[6] = NoMatricial.new("E", 0)

comeco_a = 2
comeco_b = 3

def concatenar_lue(lista, comeco_a, comeco_b)
  if comeco_a == 0
    comeco_b
  end

  posicao = comeco_a

  while lista[posicao].elo != 0
    posicao = lista[posicao].elo
  end

  lista[posicao].elo = comeco_b

  comeco_a
end