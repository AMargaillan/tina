class PhotosController < ApplicationController
  before_action :authenticate_admin!

  def create
    @item = Item.find(params[:item_id])
    @item.photo.create(photo_params)
    redirect_to item_path(@item)

  end

  def show
    puts "----------------------------------"
    @item = Item.find(params[:id])
    @photos = Photo.find(params[:id])
  end

  private

  def photo_params
    params.require(:photo)
  end

end
