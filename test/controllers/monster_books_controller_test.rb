require "test_helper"

class MonsterBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monster_books_index_url
    assert_response :success
  end
end
