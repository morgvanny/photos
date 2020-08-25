class PhotosController < ApplicationController

  def show
    @photo = Photo.find(params[:id])
  end

  def new
  end

  def create
    @photo = current_user.photos.new(photo_params)
    if @photo.save
      redirect_to @photo
    else
      render :new
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :image)
  end
end
