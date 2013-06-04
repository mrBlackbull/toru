require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get generic" do
    get :generic
    assert_response :success
  end

end
