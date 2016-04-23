require 'test_helper'
require_relative '../../lib/score'

class ScoreTest < ActiveSupport::TestCase

  setup do
  	@score = Score.new
  end

  test "Calculate scores" do
  	@score.calculate("How Can I cancel my account subscription")
    assert_equal 3, @score.score

    @score.calculate("How Can I cancel my email account")
    assert_equal 3, @score.score

    @score.calculate("How Can I cancel")
    assert_equal 1, @score.score

    @score.calculate("How Can I cancel my subscription")
    assert_equal 2, @score.score

    @score.calculate("")
    assert_equal 0, @score.score

    @score.calculate(nil)
    assert_equal 0, @score.score
  end
end