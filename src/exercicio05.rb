class No
  attr_accessor :info, :elo

  def initialize(info, elo = nil)
    @info = info
    @elo = elo
  end
end

def inverter_lista(comeco)
  anterior = nil
  atual = comeco

  while atual != nil
    proximo = atual.elo
    atual.elo = anterior
    anterior = atual
    atual = proximo
  end

  anterior
end

gaveta_c = No.new("C", nil)
gaveta_b = No.new("B", gaveta_c)
gaveta_a = No.new("A", gaveta_b)
comeco = gaveta_a

puts "LISTA ORIGINAL"
posicao = comeco

  while posicao != nil
    print "#{posicao.info} | "
    posicao = posicao.elo
  end

novo_comeco = inverter_lista(comeco)
puts ""
puts ""
puts "LISTA INVERTIDA"
posicao = novo_comeco

  while posicao != nil
    print "#{posicao.info} | "
    posicao = posicao.elo
  end