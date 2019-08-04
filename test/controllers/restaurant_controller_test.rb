require 'test_helper'

class RestaurantControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get restaurant_list_url
    assert_response :success
  end

  test "should get detail" do
    get restaurant_detail_url
    assert_response :success
  end

  test "should get search" do
    get restaurant_search_url
    assert_response :success
  end

  test "should get map" do
    get restaurant_map_url
    assert_response :success
  end

  test "should get new" do
    get restaurant_new_url
    assert_response :success
  end

  test "should get create" do
    get restaurant_create_url
    assert_response :success
  end

  test "should get modify" do
    get restaurant_modify_url
    assert_response :success
  end

  test "should get update" do
    get restaurant_update_url
    assert_response :success
  end

  test "should get delete" do
    get restaurant_delete_url
    assert_response :success
  end

end
