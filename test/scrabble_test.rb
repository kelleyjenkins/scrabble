gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_exitsts
    game = Scrabble.new

    assert_instance_of Scrabble, game
  end

  def test_it_can_split_word_into_chars
    game = Scrabble.new("hello")
    result = game.split_word

    assert_equal ["H", "E", "L", "L", "O"], result
  end


  def test_it_can_score_a_single_letter
    skip
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

end
