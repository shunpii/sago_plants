require 'test_helper'

class Managers::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get managers_items_new_url
    assert_response :success
  end

  test "should get index" do
    get managers_items_index_url
    assert_response :success
  end

  test "should get show" do
    get managers_items_show_url
    assert_response :success
  end

  test "should get edit" do
    get managers_items_edit_url
    assert_response :success
  end

end
