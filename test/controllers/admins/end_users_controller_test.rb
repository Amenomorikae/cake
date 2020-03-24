require 'test_helper'

class Admins::EndUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_end_users_new_url
    assert_response :success
  end

end
