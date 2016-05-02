require_relative( 'fish')
class River

  def initialize(fish_in_river)
    @river = fish_in_river
  end
  
  def fish_in_river
    return @river.length
  end

  def caught_fish
    fishy = @river.pop
    return fishy.name
  end



end