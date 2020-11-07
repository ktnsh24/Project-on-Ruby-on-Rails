require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get ind" do
    get home_ind_url
    assert_response :success
  end

end
