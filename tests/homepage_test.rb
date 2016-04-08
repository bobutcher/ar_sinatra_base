require_relative "test_helper"

class HomepageTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Server
  end

  def test_home_page_works
    response = get("/")
    assert_equal 200, response.status
  end
end
