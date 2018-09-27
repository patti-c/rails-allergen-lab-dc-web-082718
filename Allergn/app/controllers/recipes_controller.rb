class RecipesController < ApplicationController

  before_action(:find_recipes, {only: [:index]})
  before_action(:find_recipe, {only: [:show]})

  def index
    if !params[:order].nil? && !params[:order][:descending].nil?
      @recipes = Recipe.sort_by_ingredient_number.reverse
    else
      @recipes = Recipe.sort_by_ingredient_number
    end
  end

  def show

  end

  def new
    @recipe = Recipe.new
    @users = User.all
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  private

  def find_recipes
    @recipes = Recipe.all
  end
  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, ingredient_ids:[])
  end

end
