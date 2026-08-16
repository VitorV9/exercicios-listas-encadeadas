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

gaveta_a = NoDuplo.new("A")
gaveta_b = NoDuplo.new("B")
gaveta_c = NoDuplo.new("C")

gaveta_a.prox = gaveta_b
gaveta_b.ant  = gaveta_a

gaveta_b.prox = gaveta_c
gaveta_c.ant  = gaveta_b

comeco = gaveta_a

puts "LISTA LDE ORIGINAL"
posicao = comeco

while posicao != nil
  print "#{posicao.info} | "
  posicao = posicao.prox
end
puts ""

novo_comeco = inverter_lde(comeco)

puts "LISTA LDE INVERTIDA"
posicao = novo_comeco

while posicao != nil
  print "#{posicao.info} | "
  posicao = posicao.prox
end