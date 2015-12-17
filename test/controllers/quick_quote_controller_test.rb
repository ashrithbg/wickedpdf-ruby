require 'test_helper'

class QuickQuoteControllerTest < ActionController::TestCase
  test "should get quote" do
    get :quote
    assert_response :success
  end

end
