require 'test_helper'

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get order" do
    get cart_order_url
    assert_response :success
  end

end
