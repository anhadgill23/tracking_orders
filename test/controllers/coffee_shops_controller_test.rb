require 'test_helper'

class CoffeeShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee_shop = coffee_shops(:one)
  end

  test "should get index" do
    get coffee_shops_url, as: :json
    assert_response :success
  end

  test "should create coffee_shop" do
    assert_difference('CoffeeShop.count') do
      post coffee_shops_url, params: { coffee_shop: { address: @coffee_shop.address, barista_id: @coffee_shop.barista_id } }, as: :json
    end

    assert_response 201
  end

  test "should show coffee_shop" do
    get coffee_shop_url(@coffee_shop), as: :json
    assert_response :success
  end

  test "should update coffee_shop" do
    patch coffee_shop_url(@coffee_shop), params: { coffee_shop: { address: @coffee_shop.address, barista_id: @coffee_shop.barista_id } }, as: :json
    assert_response 200
  end

  test "should destroy coffee_shop" do
    assert_difference('CoffeeShop.count', -1) do
      delete coffee_shop_url(@coffee_shop), as: :json
    end

    assert_response 204
  end
end
