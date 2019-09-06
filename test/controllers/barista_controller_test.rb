require 'test_helper'

class BaristaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baristum = barista(:one)
  end

  test "should get index" do
    get barista_url, as: :json
    assert_response :success
  end

  test "should create baristum" do
    assert_difference('Baristum.count') do
      post barista_url, params: { baristum: { name: @baristum.name } }, as: :json
    end

    assert_response 201
  end

  test "should show baristum" do
    get baristum_url(@baristum), as: :json
    assert_response :success
  end

  test "should update baristum" do
    patch baristum_url(@baristum), params: { baristum: { name: @baristum.name } }, as: :json
    assert_response 200
  end

  test "should destroy baristum" do
    assert_difference('Baristum.count', -1) do
      delete baristum_url(@baristum), as: :json
    end

    assert_response 204
  end
end
