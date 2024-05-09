require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "first name cannot be null" do
    user = users(:one)
    user.first_name = nil
    assert_not user.save 
  end

  test "last name cannot be null" do
    user = users(:one)
    user.last_name = nil
    assert_not user.save 
  end

  test "email cannot be null" do
    user = users(:one)
    user.email = nil
    assert_not user.save 
  end

  test "birthdate cannot be null" do
    user = users(:one)
    user.birthdate = nil
    assert_not user.save 
  end

  test "email is valid" do
    user = users(:one)
    user.email = "invalid"
    assert_not user.save 
  end

  test "fullname" do
    user = users(:one)
    assert_equal "John Smith", user.fullname
  end
end
