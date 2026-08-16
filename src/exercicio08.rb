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

termo3 = NoPolinomio.new(2, 2)
termo2 = NoPolinomio.new(3, 1)
termo1 = NoPolinomio.new(5, 0)

termo1.elop = termo2
termo2.eloa = termo1

termo2.elop = termo3
termo3.eloa = termo2

comeco = termo1

valor_de_x = 2
resultado_final = avaliar_polinomio(comeco, valor_de_x)

puts "O resultado do polinômio é: #{resultado_final}"