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

a1 = NoDuplo.new(10)
a2 = NoDuplo.new(20)
a1.prox = a2
a2.ant = a1
comeco_a = a1

b1 = NoDuplo.new(30)
b2 = NoDuplo.new(40)
b1.prox = b2
b2.ant = b1
comeco_b = b1

nova_lista = concatenar_lde(comeco_a, comeco_b)

puts "LISTA CONCATENADA"
posicao = nova_lista

while posicao != nil
  print " #{posicao.info} |"
  posicao = posicao.prox
end