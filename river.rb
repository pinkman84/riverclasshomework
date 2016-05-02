require_relative( 'fish')
class River

  def initialize(fish_in_river)
    @river = fish_in_river
  end
  
  def fish_in_river
    return @river.length
  end

  # def caught_fish
  #   fishy = @river.pop
  #   return fishy.name
  # end

  def eat_fish_from_river(bear)
      if @river.size < 1
        return bear.roar
      else
        bear.tummy << @river.pop.name
        return bear.tummy
      end
    end


end