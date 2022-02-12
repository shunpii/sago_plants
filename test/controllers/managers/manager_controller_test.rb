require 'test_helper'

class Managers::ManagerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get managers_manager_new_url
    assert_response :success
  end

end
