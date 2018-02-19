class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all
  end

  def show
    @bathroom = Bathroom.find(params[:id])
    @user = User.new
  end

  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = Bathroom.new(bathroom_params)
    if @bathroom.save
      redirect_to bathroom_path(@bathroom)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def bathroom_params
    params.require(:bathroom).permit(:address ,:description, :price,:photo, :photo_cache, :handicapped, :style, :toilet_paper, :wipes, :baby, :bidet, :user_id)
  end
end


