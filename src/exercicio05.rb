class No
  attr_accessor :info, :elo

  def initialize(info, elo = nil)
    @info = info
    @elo = elo
  end
end