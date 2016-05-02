require( 'minitest/autorun' )
require_relative( '../bear' )
require_relative( '../fish' )
require_relative( '../river' )

class TestBank < MiniTest::Test

  def setup
    @bear1 = Bear.new( 'Jorah', 'Grizzly', [] )
    @bear2 = Bear.new( 'Baloo', 'Sloth', [] )
    fish1 = Fish.new( 'Salmon' )
    fish2 = Fish.new( 'Trout' )
    fish3 = Fish.new( 'Nemo' )
    
    fish_in_river = [ fish1, fish2, fish3 ]

    @river = River.new(fish_in_river)
  
  end

  def test_bear_name
  assert_equal('Jorah', @bear1.name)
  end

  def test_bear_type
    assert_equal('Sloth', @bear2.type)
  end


  def test_fish_in_river
    assert_equal(3, @river.fish_in_river)
  end

  def test_fish_in_bear
    assert_equal([], @bear1.tummy)
  end

  # def test_caught_fish
  #   assert_equal('Nemo', @river.caught_fish)
  # end

  # def test_gone_fishin
  #   assert_equal(['Nemo'], @bear1.gone_fishin)
  # end

  def test_eat_fish_from_river
    assert_equal(["Nemo"], @river.eat_fish_from_river(@bear1))
    
  end

end