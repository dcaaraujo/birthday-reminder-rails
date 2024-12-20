require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  include LoginHelper

  test "should redirect to login" do
    get dashboard_url
    assert_redirected_to new_session_path
  end

  test "should get index" do
    login_with(users(:one))
    get dashboard_url
    assert_response :success
  end
end
