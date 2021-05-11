require "test_helper"

class CoachesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get coaches_show_url
    assert_response :success
  end
end
