require 'test_helper'

class UserPortfoliosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_portfolios_index_url
    assert_response :success
  end

end
