require 'test_helper'

class UserPortfolioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_portfolio_index_url
    assert_response :success
  end

end
