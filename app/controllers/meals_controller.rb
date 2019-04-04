class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    
  end

  def update
    
  end

  def destroy
    
  end

  private

    def meal_params
      params.require(:meal).permit(:title)
    end
end
