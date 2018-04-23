class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.all
  end

  def show
    @cheese = Cheese.find(params[:id])
  end

  def new
    @cheese = Cheese.new
  end

  def edit
    @cheese = Cheese.find(params[:id])
  end

  def create
    @cheese = Cheese.new(cheese_params)

    if @cheese.save
      redirect_to cheeses_path
    else
      render 'new'
    end
  end

  def update
    @cheese = Cheese.find(params[:id])

    if @cheese.update(cheese_params)
      redirect_to cheeses_path
    else
      render 'edit'
    end
  end


  def destroy
    @cheese = Cheese.find(params[:id])
    @cheese.destroy

    redirect_to @cheese
  end

  private
  def cheese_params
    params.require(:cheese).permit(:name, :milk_type, :image_url, :description)
  end
end
