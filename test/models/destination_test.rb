require 'test_helper'

class DestinationTest < ActiveSupport::TestCase
  test "should save destination" do
    destination = Destination.new(name: 'Dubai', description: 'Only two types of weathers, hot and hotter.', price: 4000)
    assert destination
  end

  test "should test average rating is correct" do
    destination = destinations(:barcelona)
    assert_equal 3.0, destination.average_rating
  end
end
