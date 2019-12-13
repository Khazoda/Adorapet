require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get game_index" do
    get game_game_index_url
    assert_response :success
  end

end
