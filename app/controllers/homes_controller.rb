class HomesController < ApplicationController

  before_filter :authenticate_user!

  def index
    redirect_to recipes_path( email: current_user.email, name: current_user.name )
  end
end
