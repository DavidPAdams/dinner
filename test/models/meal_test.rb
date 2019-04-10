require 'test_helper'

class MealTest < ActiveSupport::TestCase

  def setup
    @valid_meal = meals(:one)
    @invalid_meal = meals(:no_title)
  end

  test "Meal with title is valid" do
    assert @valid_meal.valid?
  end

  test "Meal without title is not valid" do
    assert_not @invalid_meal.valid?
  end

end
