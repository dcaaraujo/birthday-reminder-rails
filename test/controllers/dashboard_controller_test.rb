require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    login_as_user users(:one)
    get dashboard_url
    assert_response :success
  end

  private

    def login_as_user(user)
      post login_url, params: { email: user.email, password: 'secret' }
    end
end
