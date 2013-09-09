class RecipesController < ApplicationController

  def index
    @name = current_user.name
    @userId = current_user.id
    if params[:user]
      @userRecipes = Recipe.where(:user_id => @userId)
    else
      @userRecipes = Recipe.all
    end
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.user_id = current_user.id
    @recipe.save
    redirect_to recipes_path
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def show
    @recipe = Recipe.find(params[:id])
    @author = User.find(@recipe.user_id)
  end

  def update
    @recipe = Recipe.find(params[:id])
    @author = User.find(@recipe.user_id)
    redirect_to recipe_path
  end

  def destroy

  end

end
