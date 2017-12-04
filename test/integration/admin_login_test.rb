<<<<<<< HEAD
require 'test_helper'

class AdminLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

 

=======
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


>>>>>>> 255424ca0e93c37a34441c5916fbf99f85a2c11b
end