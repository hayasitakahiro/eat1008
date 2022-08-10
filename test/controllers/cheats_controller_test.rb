require 'test_helper'

class CheatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cheats_index_url
    assert_response :success
  end

end
