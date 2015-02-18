require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get cloud_services" do
    get :cloud_services
    assert_response :success
  end

  test "should get design" do
    get :design
    assert_response :success
  end

  test "should get security_services" do
    get :security_services
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
