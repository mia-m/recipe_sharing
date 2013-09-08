class RecipesController < ApplicationController

  def index
    @email = params[ :email ]
    @name = params[:name ]
  end

  def new
    @recipe = Recipe.new

  end

  def create
    redirect_to recipes_path
  end
end
