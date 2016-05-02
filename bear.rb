require_relative( './river' )
require_relative( './fish' )

class Bear

  attr_accessor :name, :type, :tummy

  def initialize(name, type, tummy)
    @name = name
    @type = type
    @tummy = tummy
  end

  def bear_speak
    return "Rooooooar"
  end

  def gone_fishin
   @tummy << @river
   return @tummy
  end



end

