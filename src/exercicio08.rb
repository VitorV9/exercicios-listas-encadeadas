class NoPolinomio
  attr_accessor :a, :i, :eloa, :elop

  def initialize(a, i, eloa = nil, elop = nil)
    @a = a
    @i = i
    @eloa = eloa
    @elop = elop
  end
end