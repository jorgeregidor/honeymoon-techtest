require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  test "can save rating" do
    user = users(:luke)
    rating = user.ratings.new(score: 7)
    rating.destination = destinations(:barcelona)
    assert rating.save
  end
end
