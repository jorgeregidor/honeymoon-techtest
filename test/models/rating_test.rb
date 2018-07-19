require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  test "can save rating" do
    user = users(:luke)
    rating = user.ratings.new(score: 4)
    rating.destination = destinations(:barcelona)
    assert rating.save
  end

  test "can not save with rating score 0" do
    user = users(:luke)
    rating = user.ratings.new(score: 0)
    rating.destination = destinations(:barcelona)
    assert_not rating.valid?
  end

  test "can not save with rating score 6" do
    user = users(:luke)
    rating = user.ratings.new(score: 6)
    rating.destination = destinations(:barcelona)
    assert_not rating.valid?
  end
  
end
