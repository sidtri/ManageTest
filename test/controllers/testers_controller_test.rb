require 'test_helper'

class TestersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get initiate" do
    get :initiate
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
