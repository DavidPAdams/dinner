class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  def index
    @meals = Meal.all
  end

  def show
  end

  def new
    @meal = Meal.new
  end

  def edit
  end

  def create
    @meal = Meal.new(meal_params)
    respond_to do |format|
      if @meal.save
        format.html { redirect_to meal_path(id: @meal.id) }
        flash[:success] = "Meal was successfully created"
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to @meal }
        flash[:success] = "Meal successfully updated"
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      flash[:danger] = "Meal was successfully deleted"
    end
  end

  private

    def set_meal
      @meal = Meal.find(params[:id])
    end

    def meal_params
      params.require(:meal).permit(:title)
    end
end
