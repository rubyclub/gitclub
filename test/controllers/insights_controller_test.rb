require 'test_helper'
class InsightsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get insights_show_url
    assert_response :success
  end
end
