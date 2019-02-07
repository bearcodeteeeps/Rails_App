require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get express" do
    get orders_express_url
    assert_response :success
  end

end
