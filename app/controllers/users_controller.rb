class UsersController < ApplicationController

  def index
    @images=Image.all
  end

  def new
  
  end

  def create
    @image=Image.new(image_params)
    if @image.save
    redirect_to users_path
    end
  end

  def show
    @image=Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:name,:image_url,:pdf,:product_image_url)
  end
end
