require 'test_helper'

class OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get express" do
    get order_express_url
    assert_response :success
  end

end
