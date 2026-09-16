require "test_helper"

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get blogs" do
    get blog_blogs_url
    assert_response :success
  end
end
