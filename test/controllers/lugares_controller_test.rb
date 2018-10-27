require 'test_helper'

class LugaresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lugares_index_url
    assert_response :success
  end

  test "should get show" do
    get lugares_show_url
    assert_response :success
  end

  test "should get new" do
    get lugares_new_url
    assert_response :success
  end

  test "should get create" do
    get lugares_create_url
    assert_response :success
  end

  test "should get edit" do
    get lugares_edit_url
    assert_response :success
  end

  test "should get update" do
    get lugares_update_url
    assert_response :success
  end

  test "should get delete" do
    get lugares_delete_url
    assert_response :success
  end

end
