class FavoritesController < ApplicationController
  def index
  end

  def create
    @favorite = Favorite.new(favorite_params)

    if @favorite.save
      redirect_to cheeses_path
    # else
    #   render 'new'
    end
  end
end
