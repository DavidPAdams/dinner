require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @meal = meals(:one)
  end

  test "should get index" do
    get meals_url
    assert_response :success
  end

  test "should get show" do
    get meal_url(@meal)
    assert_response :success
  end

  test "should get new" do
    get new_meal_url
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_url(@meal)
    assert_response :success
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

end
