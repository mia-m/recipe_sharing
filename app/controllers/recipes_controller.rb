class RecipesController < ApplicationController

  respond_to :html, :xml, :json, :js

  def index
    @name = current_user.name
    @userId = current_user.id
    if params[:user]
      @userRecipes = Recipe.where(:user_id => @userId)
    else
      @userRecipes = Recipe.all
    end
    respond_with(@userRecipes, :location => recipes_url)
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.user_id = current_user.id
    if @recipe.save
      flash[:notice] = "Successfully created recipe"
      respond_with(@recipes, :location => recipes_url)
      #redirect_to recipes_path # commented out, use ajax instead
    end
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
    if @recipe.update_attributes(params[:recipe])
      flash[:notice] = "Successfully updated recipe"
      redirect_to recipe_path
    end
  end

  def destroy


  end

end
