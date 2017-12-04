require 'test_helper'

class AdminLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "login with invalid information" do
    get admin_path
    assert_template 'admin/login'
    post admin_path, params: { session: { email: "", password: "" } }
    assert_template 'admin/login'
    assert_not flash.empty?
    get admin_path
    assert flash.empty?
  end

  test "login with valid information" do
    get admin_path
    post admin_path, params: { session: { username: 'admin',
                                          password: 'admin' } }
    assert_redirected_to index_path
    assert_template 'i00nd000ex'
    assert_select "a[href=?]", admin_path, count: 0
    assert_select "a[href=?]", logout_path
  end


end