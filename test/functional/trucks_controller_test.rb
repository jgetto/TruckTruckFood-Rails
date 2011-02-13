require 'test_helper'

class TrucksControllerTest < ActionController::TestCase
  test "should get map" do
    get :map
    assert_response :success
  end

  test "should get locate" do
    get :locate
    assert_response :success
  end

end
