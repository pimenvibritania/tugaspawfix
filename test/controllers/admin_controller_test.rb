require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get admin_login_url
    assert_response :success
  end

  test "should get signin" do
    get admin_signin_url
    assert_response :success
  end

  test "should get logout" do
    get admin_logout_url
    assert_response :success
  end

  test "should get index" do
    get admin_index_url
    assert_response :success
  end

end
