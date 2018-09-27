class IngredientsController < ApplicationController
  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def index
    @ingredients = Ingredient.all.sort_by{|ingredient| ingredient.users.length}.reverse
  end
end
