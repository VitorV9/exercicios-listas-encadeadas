class NoMatricial
  attr_accessor :info, :elo

  def initialize(info, elo)
    @info = info
    @elo = elo
  end
end

def contar_nos(lista, comeco)
  contador = 0
  posicao = comeco

  while posicao != 0
    contador += 1
    posicao = lista[posicao].elo
  end

  contador
end

lista_teste = Array.new(6)

lista_teste[1] = NoMatricial.new("-", 3)
lista_teste[2] = NoMatricial.new("M", 5)
lista_teste[3] = NoMatricial.new("-", 0)
lista_teste[4] = NoMatricial.new("P", 2)
lista_teste[5] = NoMatricial.new("R", 0)

comeco_teste = 4

total_nos = contar_nos(lista_teste, comeco_teste)

puts "Resultado: #{total_nos} nós."