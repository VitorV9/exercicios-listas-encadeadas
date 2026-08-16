class NoDuplo
  attr_accessor :info, :ant, :prox

  def initialize(info, ant = nil, prox = nil)
    @info = info
    @ant = ant
    @prox = prox
  end
end

def concatenar_lde(comeco_a, comeco_b)

  atual = comeco_a
  while atual.prox != nil
    atual = atual.prox
  end

  atual.prox = comeco_b
  comeco_b.ant = atual

  comeco_a
end