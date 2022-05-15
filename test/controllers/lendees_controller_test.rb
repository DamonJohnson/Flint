require "test_helper"

class LendeesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get lendees_create_url
    assert_response :success
  end
end
