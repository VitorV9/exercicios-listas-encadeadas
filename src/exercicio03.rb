class NoMatricial
  attr_accessor :info, :elo

  def initialize(info, elo)
    @info = info
    @elo = elo
  end
end

lista = Array.new(8)

lista[2] = NoMatricial.new("N", 5)
lista[5] = NoMatricial.new("I", 6)
lista[6] = NoMatricial.new("C", 7)
lista[7] = NoMatricial.new("E", 0)

lista[3] = NoMatricial.new("T", 1)
lista[1] = NoMatricial.new("R", 4)
lista[4] = NoMatricial.new("Y", 0)

comeco_a = 2
comeco_b = 3