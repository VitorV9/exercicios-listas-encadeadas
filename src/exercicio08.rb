class NoPolinomio
  attr_accessor :a, :i, :eloa, :elop

  def initialize(a, i, eloa = nil, elop = nil)
    @a = a
    @i = i
    @eloa = eloa
    @elop = elop
  end
end

def avaliar_polinomio(comeco, x)
  atual = comeco
  resultado = 0

  while atual != nil

    conta_da_gaveta = atual.a * (x ** atual.i)

    resultado = resultado + conta_da_gaveta

    atual = atual.elop

  end

  resultado
end