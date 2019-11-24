require 'test_helper'

class ProfilepageControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get profilepage_profile_url
    assert_response :success
  end

end
