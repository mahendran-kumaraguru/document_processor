require 'test_helper'

class ProcessorControllerTest < ActionController::TestCase
  test "should get capitalize" do
    get :capitalize
    assert_response :success
  end

end
