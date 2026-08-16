class NoMatricial
  attr_accessor :info, :elo

  def initialize(info, elo)
    @info = info
    @elo = elo
  end
end

lista = Array.new(10)

#A
lista[2] = NoMatricial.new(10, 5)
lista[5] = NoMatricial.new(30, 8)
lista[8] = NoMatricial.new(50, 0)
comeco_a = 2

#B
lista[3] = NoMatricial.new(20, 1)
lista[1] = NoMatricial.new(40, 6)
lista[6] = NoMatricial.new(60, 0)
comeco_b = 3

def intercalar_lue(lista, comeco_a, comeco_b)

  posicao_a = comeco_a
  posicao_b = comeco_b

  if lista[posicao_a].info < lista[posicao_b].info
    comeco_c = comeco_a
    posicao_a = lista[posicao_a].elo
  else
    comeco_c = comeco_b
    posicao_b = lista[posicao_b].elo
  end

  atual_c = comeco_c

  if lista[posicao_a].info < lista[posicao_b].info
    lista[atual_c].elo = posicao_a
    atual_c = posicao_a
    posicao_a = lista[posicao_a].elo
  else
    lista[atual_c].elo = posicao_b
    atual_c = posicao_b
    posicao_b = lista[posicao_b].elo
  end

  if posicao_a == 0
    lista[atual_c].elo = posicao_b
  else
    lista[atual_c].elo = posicao_a
  end

comeco_c

end

comeco_c = intercalar_lue(lista, comeco_a, comeco_b)
puts "lista Ordenada"
posicao = comeco_c

while posicao != 0
  puts "Valor: #{lista[posicao].info} | Próximo elo: #{lista[posicao].elo}"
  posicao = lista[posicao].elo
end