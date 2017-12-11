require 'test_helper'

class StarchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @starch = starches(:one)
  end

  test "should get index" do
    get starches_url
    assert_response :success
  end

  test "should get new" do
    get new_starch_url
    assert_response :success
  end

  test "should create starch" do
    assert_difference('Starch.count') do
      post starches_url, params: { starch: { name: @starch.name } }
    end

    assert_redirected_to starch_url(Starch.last)
  end

  test "should show starch" do
    get starch_url(@starch)
    assert_response :success
  end

  test "should get edit" do
    get edit_starch_url(@starch)
    assert_response :success
  end

  test "should update starch" do
    patch starch_url(@starch), params: { starch: { name: @starch.name } }
    assert_redirected_to starch_url(@starch)
  end

  test "should destroy starch" do
    assert_difference('Starch.count', -1) do
      delete starch_url(@starch)
    end

    assert_redirected_to starches_url
  end
end
