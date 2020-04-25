require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "requires item in the cart" do
    get new_order_url
    assert_redirected_to store_index_path
    assert_equal flash[:notice], "Your cart is empty"
  end

  test "should get new" do
    post line_items_url, params: { product_id: products(:ruby).id }

    get new_order_url
    assert_response :success
  end
end
