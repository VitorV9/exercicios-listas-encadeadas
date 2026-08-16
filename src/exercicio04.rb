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