require 'test_helper'
require_relative '../../lib/score'

class ScoreTest < ActiveSupport::TestCase

  setup do
  	@score = Score.new
  end
  test "Calculate score" do
  	@score.calculate("How Can I cancel my account subscription")
    assert 2, @score.score

    @score.calculate("How Can I cancel my email account")
    assert 2, @score.score

    @score.calculate("How Can I cancel")
    assert 0, @score.score
  end
end

# How Can I cancel my account subscription | score 2 -  ACCOUNT, SUBSCRIPTION
# How Can I cancel my email account | score 2 - EMAIL, ACCOUNT
# How Can I cancel | score 0
# How Can | score 0
# Ho | should be 0
# How Can I canc | should be 0

# _english_ common words [how, I, am, can, would, not, be, doing]

# Don't save query with score 0
