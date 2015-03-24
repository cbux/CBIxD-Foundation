require 'test_helper'

class JobsMatrixControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get jdp" do
    get :jdp
    assert_response :success
  end

end
