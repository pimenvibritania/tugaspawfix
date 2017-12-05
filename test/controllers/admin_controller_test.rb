require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:one)
  end

  test "should get index" do
    get admin_url
    assert_response :success
  end


  test "should create admin" do
      post admin_url, params: { admin: {username: 'pimen', password: 'pimen'  } }
      get admin_url
      assert_response :success
    #assert_redirected_to admin_path
  end


  test "should destroy admin" do
    assert_difference('Admin.count', 0) do
      delete logout_url(@admin)
    end

    assert_redirected_to admin_url
  end
end
