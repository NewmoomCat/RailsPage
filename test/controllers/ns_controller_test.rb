require "test_helper"

class NsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ns_index_url
    assert_response :success
  end
end
