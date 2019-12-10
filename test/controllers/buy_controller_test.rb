require 'test_helper'

class BuyControllerTest < ActionDispatch::IntegrationTest
  test "should get listItems" do
    get buy_listItems_url
    assert_response :success
  end

end
