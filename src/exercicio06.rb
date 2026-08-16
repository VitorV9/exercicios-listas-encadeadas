class NoDuplo
  attr_accessor :info, :ant, :prox

  def initialize(info, ant = nil, prox = nil)
    @info = info
    @ant = ant
    @prox = prox
  end
end