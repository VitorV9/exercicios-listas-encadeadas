class NoMatricial
  attr_accessor :info, :elo

  def initialize(info, elo)
    @info = info
    @elo = elo
  end
end

lista_2 = Array.new(9)

lista_2[2] = NoMatricial.new("G", 5)
lista_2[5] = NoMatricial.new("O", 7)
lista_2[7] = NoMatricial.new("O", 8)
lista_2[8] = NoMatricial.new("D", 0)

lista_2[3] = NoMatricial.new("G", 1)
lista_2[1] = NoMatricial.new("A", 4)
lista_2[4] = NoMatricial.new("M", 6)
lista_2[6] = NoMatricial.new("E", 0)

comeco_a = 2
comeco_b = 3