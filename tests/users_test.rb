require_relative "test_helper"

class UserTest < Minitest::Test
  include Rack::Test::Methods


  def test_users_class_exists
    assert_equal User.class, Class
  end

  def test_able_create_new_user
    user_one = User.create(email: "bob@gmail.com")
    assert_equal "bob@gmail.com", user_one.email
  end


end
