require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get items_Index_url
    assert_response :success
  end
end
