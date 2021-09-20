require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save a user without unique email, unique username and valid password" do
    user = User.new
    user.email = "j@gmail.com"
    user.username = "Bob"
    user.password = "12345"
    assert_not user.save, "Can't save "
  end

end
