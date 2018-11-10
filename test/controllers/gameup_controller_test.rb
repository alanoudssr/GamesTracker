require 'test_helper'

class GameupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gameup_index_url
    assert_response :success
  end

end
