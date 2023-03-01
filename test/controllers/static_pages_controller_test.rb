require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get static_pages_profile_url
    assert_response :success
  end
end
