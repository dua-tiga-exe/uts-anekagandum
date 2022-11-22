require "test_helper"

class CarsCsvControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cars_csv_index_url
    assert_response :success
  end
end
