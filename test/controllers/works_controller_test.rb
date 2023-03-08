require "test_helper"

class WorksControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get works_Index_url
    assert_response :success
  end
end
