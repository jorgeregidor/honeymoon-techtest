require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should save user" do
    user = User.new(name: "Jorge")
    assert user.save
  end
end
