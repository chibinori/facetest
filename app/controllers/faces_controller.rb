class FacesController < ApplicationController

  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
    else
      render 'new'
    end
  end

  def photo_params
    params.require(:photo).permit(:name, :photo_imafe)
  end
end
