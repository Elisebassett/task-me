require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get categories_title:string_url
    assert_response :success
  end

  test "should get description:string" do
    get categories_description:string_url
    assert_response :success
  end

  test "should get color:string" do
    get categories_color:string_url
    assert_response :success
  end

end
