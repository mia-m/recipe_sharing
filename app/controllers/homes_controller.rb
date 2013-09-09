class HomesController < ApplicationController

  before_filter :authenticate_user!

  def index
    redirect_to recipes_path
  end

  def create

  end

  def new

  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

end
