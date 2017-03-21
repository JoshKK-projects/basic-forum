require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should get single" do
    get :single
    assert_response :success
  end

end
