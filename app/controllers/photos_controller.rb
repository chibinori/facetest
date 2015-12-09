class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @photos = Photo.all
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to request.referrer || root_url
  end


  def photo_params
    params.require(:photo).permit(:name, :photo_image)
  end
end
