class NoDuplo
  attr_accessor :info, :ant, :prox

  def initialize(info, ant = nil, prox = nil)
    @info = info
    @ant = ant
    @prox = prox
  end
end

def inverter_lde(comeco)
  atual = comeco
  novo_comeco = nil

  while atual != nil
    proximo = atual.prox
    atual.prox = atual.ant
    atual.ant = proximo
    novo_comeco = atual
    atual = proximo
  end

  novo_comeco
end